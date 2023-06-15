class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @events = Event.all

    @events = @events.where(category: params[:query]) if params[:query].present?
    @category = params[:query].capitalize if params[:query].present?
    # Assuming query parameter contains the city name
    @events = @events.where(level: params[:level].capitalize) if params[:level].present?

    if params[:city].present?
      if params[:city] != "all"
        @events = @events.where(city: params[:city].capitalize)
        @city = params[:city].capitalize
      end
    else
      @events = @events.where(city: "Berlin")
      @city = "Berlin"
    end

    # The `geocoded` scope filters only events with coordinates
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", formats: [:html], locals: { event: event }),
        marker_html: render_to_string(partial: "marker", formats: [:html], locals: { event: event })
      }
    end

    respond_to do |format|
      format.html
      format.json {
        render json: {
          cards: render_to_string(partial: "shared/index_card_all", locals: {events: @events}, formats: [:html]),
          map: render_to_string(partial: "shared/map_container", locals: {markers: @markers}, formats: :html)
        }
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { event: @event }),
      marker_html: render_to_string(partial: "marker", locals: { event: @event })
    }]
    @message = Message.new
    if current_user
      @user_has_bookings = @event.bookings.select { |booking| booking.user_id == current_user.id }.empty?
    end
  end

  def new
    @group = params[:group_id] ? Group.find(params[:group_id]) : nil
    if @group.nil?
      @event = Event.new
    else
      @event = Event.new(group_id: @group.id)
    end
    @categories = ApplicationRecord::CATEGORIES
    @level = ApplicationRecord::LEVEL
  end

  def create
    @group = params[:group_id] ? Group.find(params[:group_id]) : nil
    @event = Event.new(event_params)
    @event.group = @group if @group
    # @event = Event.new(event_params)
    @event.duration = @event.end_date - @event.start_date
    @event.user_id = current_user.id
    @event.city = @event.address.split[-2].gsub(',', '')
    if @event.save
      @event.create_chatroom!(name: "Chatroom for #{@event.title}")
      Booking.create(user_id: current_user.id, event_id: @event.id)
      redirect_to event_path(@event)
      flash[:notice] = "Your Event \"#{@event.title}\" has been created."
    else
      @categories = ApplicationRecord::CATEGORIES
      @level = ApplicationRecord::LEVEL
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
    @categories = ApplicationRecord::CATEGORIES
    @level = ApplicationRecord::LEVEL
  end

  def update
    @event = Event.find(params[:id])
    if event_params[:photos].all? { |element| element == "" }
      params = event_params.except(:photos)
    else
      params = event_params
      @event.photos.purge
    end
    @event.update(params)
    @event.duration = @event.end_date - @event.start_date
    @event.user_id = current_user.id
    @event.city = @event.address.split[-2].gsub(',', '')
    if @event.save
      redirect_to event_path(@event)
      flash[:notice] = "Your Event \"#{@event.title}\" has been updated."
    else
      @categories = ApplicationRecord::CATEGORIES
      @level = ApplicationRecord::LEVEL
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
    flash[:alert] = "Your Event \"#{@event.title}\" has been deleted."
  end

  private

  def event_params
    params.require(:event).permit(:group_id, :title, :description, :category, :start_date, :end_date, :address, :price, :spots_available, :level, photos: [])
  end
end

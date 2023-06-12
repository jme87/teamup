class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @events = Event.all
    @events = @events.where(category: params[:query]) if params[:query].present?
    @category = params[:query].capitalize if params[:query].present? # Assuming query parameter contains the city name
    #@events = @events.where(level: params[:level]) if params[:level].present?


    # The `geocoded` scope filters only events with coordinates
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: event }),
        marker_html: render_to_string(partial: "marker", locals: { event: event })
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
    @event = Event.new
    @categories = ApplicationRecord::CATEGORIES
    @level = ApplicationRecord::LEVEL
  end

  def create
    @event = Event.new(event_params)
    @event.duration = @event.end_date - @event.start_date
    @event.user_id = current_user.id
    if @event.save
      @event.create_chatroom!(name: "Chatroom for #{@event.title}")
      redirect_to event_path(@event)
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
    if @event.save
      redirect_to event_path(@event)
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
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :category, :start_date, :end_date, :address, :price, :spots_available, :level, photos: [])
  end
end

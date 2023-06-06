class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @event = Event.find(params[:event_id])
    @booking.event_id = @event.id
    if @booking.save
      redirect_to event_path(@event)
    else
      #code
      redirect_to event_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @booking = Booking.find_by("user_id = ? AND event_id = ?", current_user.id, @event.id)
    @booking.destroy
    redirect_to event_path(@event), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit()
  end
end

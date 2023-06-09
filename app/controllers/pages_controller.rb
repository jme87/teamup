class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_page]

  def landing_page
    # All Categories
    @categories = Event.where(category: params[:query])
    # if request.location.city.present?
    #   @city = request.location.city
    # else
    #   @city = "Berlin"
    # end
    @city = "Berlin"
    @near_events = Event.near(@city, 10).sample(6)
    @unique_citys = Event.pluck(:city).compact.uniq.reject(&:empty?).sort
  end
end

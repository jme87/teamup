class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_page]

  def landing_page
    # All Categories
    @categories = Event.where(category: params[:query])
    #  @events = Event.all.sample(3)
    if request.location.city.present?
      @city = request.location.city
    else
      @city = "Berlin"
    end
    @events = Event.near(@city, 10)
    # @events = Event.near("Tour Eiffel", 10)
  end
end

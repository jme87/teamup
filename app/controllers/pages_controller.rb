class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard

  end

  def landing_page
  #  @events = Event.all.sample(3)
    if request.location.city.present?
      @city = request.location.city
    else
      @city = "Berlin"
    end
    @events = Event.near('Berlin', 10)
    # @events = Event.near("Tour Eiffel", 10)
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def landing_page
  #  @events = Event.all.sample(3)
    if request.location.city.present?
      @city = request.location.city
    else
      @city = "Berlin"
    end
    @events = Event.near(@city, 10)
    # @events = Event.near("Tour Eiffel", 10)
  end

  def dashboard
  # User Events:
  #   # All users events
  #   @all_users_events = current_user.events.find(:all, :order => "date")

  #   # Users upcoming 4 events
  #   @users_upcoming_4_events = @all_users_events.first(4)

  # # User Groups:
  #   # All user member groups
  #   @all_groups_user_member = current_user.groups

  #   # All user organising groups
  #   @all_groups_user_organises = current_user.groups
  end
end

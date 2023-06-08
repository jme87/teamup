class DashboardController < ApplicationController

  def profile
    @events = Event.all
  end

  def user_events
    @events = Event.all
  end

  def user_groups
    @events = Group.all
  end

end

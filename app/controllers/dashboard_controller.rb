class DashboardController < ApplicationController

  def profile
    @events = Event.all
    @attending = Event.joins(:bookings).where(bookings: { user: current_user }) #.where('event.start_date > ?', Date.today)
    @member = Group.joins(:user_groups).where(user_groups: { user: current_user })
  end

  def user_events
    @events = Event.all
    @attending = Event.joins(:bookings).where(bookings: { user: current_user }) #.where('event.start_date > ?', Date.today)
    @hosting = Event.where(user: current_user).where('start_date > ?', Date.today)
    # @past = Event.where(user: current_user).where('start_date < ?', Date.today) +
  end

  def user_groups
    @events = Group.all
    @organiser = Group.where(user: current_user)
    @member = Group.joins(:user_groups).where(user_groups: { user: current_user })
    @member = @member.select { |group| group.user_id == current_user.id }
  end

end

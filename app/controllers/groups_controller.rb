class GroupsController < ApplicationController
  def new
    @group = Group.new
    @categories = ApplicationRecord::CATEGORIES
  end

  def create
    @group = Group.new(group_params)
    @group.save
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :city, :category, :toggle_attribute, :photo)
  end
end

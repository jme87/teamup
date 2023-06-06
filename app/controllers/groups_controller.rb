class GroupsController < ApplicationController
  def new
    @group = Group.new
    @categories = ApplicationRecord::CATEGORIES
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to root_path
    else
      @categories = ApplicationRecord::CATEGORIES
      render :new, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :city, :category, :toggle_attribute)
  end
end

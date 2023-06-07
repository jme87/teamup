class GroupsController < ApplicationController
  def new
    @group = Group.new
    @categories = ApplicationRecord::CATEGORIES
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to group_path(@group)
    else
      @categories = ApplicationRecord::CATEGORIES
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
    @users = @group.users
    @users_count = @users.count
    @creator = @group.user.user_name
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update (group_params)
    redirect_to group_path(@group)
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :city, :category, :toggle_attribute)
  end
end

class GroupsController < ApplicationController

  def index

    @groups = Group.where(private: [nil, false])
    # @groups = Group.all

    if params[:query].present?
      query = "%#{params[:query].downcase}%"
      @groups = @groups.where('LOWER(title) LIKE ? OR LOWER(description) LIKE ?
          OR LOWER(city) LIKE ?
          OR LOWER(category) LIKE ?',
          query, query, query, query)
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "shared/groups_list", locals: {groups: @groups}, formats: [:html] }
    end
  end

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
    @creator = @group.user.nickname
    @sample = @users.sample(3)
    @usergroup = @group.user_groups.find_by(user: current_user)
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

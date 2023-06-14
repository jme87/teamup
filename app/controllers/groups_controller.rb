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
      UserGroup.create(user_id: current_user.id, group_id: @group.id)
      flash[:notice] = "Your Group \"#{@group.title}\" has been created."
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
    if @group.update (group_params)
      flash[:notice] = "Your Group \"#{@group.title}\" has been updated."
      redirect_to group_path(@group)
    else
      @categories = ApplicationRecord::CATEGORIES
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
    flash[:notice] = "Your Group \"#{@group.title}\" has been deleted."
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :city, :category, :toggle_attribute)
  end
end

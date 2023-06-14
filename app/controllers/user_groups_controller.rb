class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @usergroup = UserGroup.new
    @usergroup.user = current_user
    @usergroup.group = @group
    @usergroup.save
    redirect_to group_path(@group)
    flash[:notice] = "You joined the Group \"#{@group.title}\"."
  end

  def destroy
    @usergroup = UserGroup.find(params[:id])
    title = @usergroup.group.title
    @usergroup.destroy
    redirect_to profile_path
    flash[:alert] = "You left the Group \"#{title}\"."
  end
end

class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @usergroup = UserGroup.new
    @usergroup.user = current_user
    @usergroup.group = @group
    @usergroup.save
    redirect_to group_path(@group)
  end

  def destroy
    @usergroup = UserGroup.find(params[:id])
    @usergroup.destroy
    redirect_to profile_path, notice: "You have been removed successfully."
  end
end

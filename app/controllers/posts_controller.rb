class PostsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.group_id = @group.id
    @post.save
    redirect_to group_path(@group)
  end

  def update
    @group = Group.find(params[:group_id])
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to group_path(@group)
  end

  def destroy
    @post = Post.find(params[:id])
    @related_posts = Post.where(post_id: @post.id)
    @related_posts.each { |related_post| related_post.destroy }
    @post.destroy
    redirect_to group_path(@post.group), status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:message, :post_id)
  end
end

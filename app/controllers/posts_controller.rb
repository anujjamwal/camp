class PostsController < ApplicationController
  def create
    user = User.find_by(id: params[:user_id])
    post = Post.new(post_params)
    post.author = @current_user
    post.owner = user
    post.save

    redirect_to user_path(user)
  end

  private
  def post_params
    params.required(:post).permit(:content)
  end
end

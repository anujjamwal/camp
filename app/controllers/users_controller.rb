class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @wall_posts = @user.wall_posts
  end
end

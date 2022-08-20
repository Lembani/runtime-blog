class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = Post.where(author_id: params[:id]).order(created_at: :desc).limit(3)
  end
end

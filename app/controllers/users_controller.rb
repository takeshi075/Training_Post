class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = current_user
  end
end
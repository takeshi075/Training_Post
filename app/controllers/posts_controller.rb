class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    binding.pry
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:memo, :image,:menu,:weight,:repetition,:set_count)
  end
end

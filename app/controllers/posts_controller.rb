class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @coments = @post.coments
    @coment = Coment.new
  end

  def show
    @post = Post.find(params[:id])
    @coments = @post.coments.build
    # @coment = Coment.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else 
      render "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
      if post.user_id == current_user.id
        post.destroy
      end
    redirect_to user_path(current_user)
  end

  
  private
  def post_params
    params.require(:post).permit(:memo, :image,:menu1,:menu2,:menu3,:menu4,:menu5 ).merge(user_id: current_user.id)
  end

end


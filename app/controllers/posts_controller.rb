class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if User.where(id: post_params[:user_id]).present? && @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end

class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :content))
    @post.save
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :content))
    @post.save
    redirect_to @post
  end
end

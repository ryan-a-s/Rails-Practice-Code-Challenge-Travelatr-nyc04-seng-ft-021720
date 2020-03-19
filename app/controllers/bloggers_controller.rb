class BloggersController < ApplicationController
  def new
    @blogger = Blogger.new
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def create
    @blogger = Blogger.new
    @blogger.update(params.require(:blogger).permit(:name, :bio, :age))
    @blogger.save
    redirect_to @blogger
  end
end

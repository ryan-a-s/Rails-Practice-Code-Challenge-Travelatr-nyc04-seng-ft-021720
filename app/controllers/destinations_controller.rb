class DestinationsController < ApplicationController
  def show
    @destination = Destination.find(params[:id])
    @posts = Post.all
  end
end

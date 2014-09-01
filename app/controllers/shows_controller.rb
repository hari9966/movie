class ShowsController < ApplicationController
  def new
    @show=Show.new
  end
  def create
    @show = Show.new(params[:show].permit(:showtime))
    @show.save
    redirect_to @show
  end
end

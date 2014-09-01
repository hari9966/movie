class ShowtheatersController < ApplicationController
  def new
   @showtheater=Showtheater.new
  end
  def create 
    @showtheater=Showtheater.new(params[:showtheater].permit(:theater_id,:show_id))
    @showtheater.save
    redirect_to 'new'
  end
  def shows
   @shows=Showtheater.join(:shows)
  end
end

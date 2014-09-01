class MytheatersController < ApplicationController
  def index
   @theaters = Theater.all
  end
  def import
    Theater.import(params[:file])
    redirect_to root_url, notice: "theaters imported."
  end
end

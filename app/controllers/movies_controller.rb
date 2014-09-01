class MoviesController < ApplicationController
before_action :authenticate_user!
  respond_to :html, :js
  #http_basic_authenticate_with name: "hari", password: "penugolanu"
    def index
      @movies=Movie.search(params[:search]).paginate(:per_page => 5, :page =>params[:page])
    end
    def new
      @movie = Movie.new
    end
    def create
      @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to @movie
      else
        render action: 'new', alert: 'User could not be created' 
      end
    end
  def show
    @movie=Movie.find(params[:id])
    @slide=@movie.gallery.images unless @movie.gallery.nil?
    @theaters=@movie.theaters
  end
    private
      def movie_params
      params.require(:movie).permit(:name,:avatar,:description,:video)
      end
end




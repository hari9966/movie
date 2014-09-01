class GalleriesController < ApplicationController
    def new
      @movie = Movie.find(params[:movie_id])
      @gallery= @movie.build_gallery
      @gallery.images.build
    end
    def create
       @movie = Movie.find(params[:movie_id])
      #@movie = Movie.find(params[:movie_id])
      #@gallery=@movie.galleries.create(gallery_params)
      @gallery=@movie.build_gallery(gallery_params)
      @gallery.save
      redirect_to movie_path(@movie)
      flash[:notice] = "Successfully Created project."
    end
    def gallery_params
      params.require(:gallery).permit(:id,:name,:movie_id,images_attributes: [:id,:photo, :_destroy])
    end
end

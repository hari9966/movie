class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment=@movie.comments.create(comment_params)
    @comment.save
   redirect_to movie_path(@movie)
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter_name,:description,:rating)
    end
end

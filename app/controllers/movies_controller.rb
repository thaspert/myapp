class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = IMDB.find_by(id: params[:id])
    if @movie == nil
      redirect_to "http://localhost:3000/movies"
    end
  end

  def secret
    redirect_to "http://localhost:3000/poker"
  end

end

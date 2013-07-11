class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end

  def search
    @search_result = Imdb::Search.new(params[:title].to_s)
  end

  def show_search_result
    @movie = movie_search(params[:id])
  end

  def create

    movie = movie_search(params[:id])
    movie = Movie.new(
      :title => movie.title,
      :year => movie.year,
      :mpaa_rating => movie.mpaa_rating,
      :plot => movie.plot)
    if params[:x] == "Favorite"
      movie.rating = 100
    end
      movie.save
      redirect_to '/movies'
  end

  def rate
    id = params[:id]
    @movie = Movie.find(id)
    if params[:rate] == "plus"
      @movie.rating += 1
    else
      @movie.rating -= 1
    end
      movie.save
      redirect '/movies'
  end

  def new
  end

  def edit
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)

  end

  def update
  end

  def destroy
  end

  private
  def movie_search(id)
    Imdb::Movie.new(id)
  end
end
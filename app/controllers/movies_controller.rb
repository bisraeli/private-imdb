class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end

  def search
    @search_result= Imdb::Search.new(params[:title])
  end

end
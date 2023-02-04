class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie
    movie_id = params.fetch("id")
    @movie = Movie.all.where(:id => movie_id).first
    render({:template => "movie_templates/movie.html.erb"})
  end
end

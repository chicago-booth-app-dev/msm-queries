class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb" })
  end
  
  def youngest
    @youngest = Director.all.where.not(:dob => nil).order({:dob => :desc}).first
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def eldest
    @eldest = Director.all.where.not(:dob => nil).order({:dob => :asc}).first
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def director
    director_id = params.fetch("id")
    @director = Director.all.where(:id => director_id).first
    @movies = Movie.all.where(:director_id => director_id)
    render({ :template => "director_templates/director.html.erb" })
  end
end

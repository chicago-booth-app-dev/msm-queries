Rails.application.routes.draw do
  #static routes
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" }) # lists all directors
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/movies", { :controller => "movies", :action => "index" }) # lists all movies
  get("/actors", { :controller => "actors", :action => "index" }) # lists all actors
  
  # dynamic routes
  # routes matche in order (top-down priority), so put dynamic routes below static routes
  get("/directors/:id", { :controller => "directors", :action => "director" })
  get("/movies/:id", { :controller => "movies", :action => "movie" }) 
  get("/actors/:id", { :controller => "actors", :action => "actor" }) 
end

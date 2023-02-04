class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({:template => "actor_templates/index.html.erb" })
  end

  def actor
    actor_id = params.fetch("id")
    @actor = Actor.all.where(:id => actor_id).first
    @characters = Character.all.where(:actor_id => actor_id)
    
    render({ :template => "actor_templates/actor.html.erb" })
  end
end

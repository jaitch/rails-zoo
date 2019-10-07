class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    animal_id = params[:id].to_i
    @animal = Animal.find(animal_id)
    if @animal.nil?
      head :not_found
      return
    end
  end
end

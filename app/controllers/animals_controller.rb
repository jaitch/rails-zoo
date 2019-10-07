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

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal)
      return
    else
      render :new
      return
    end
  end

  private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end

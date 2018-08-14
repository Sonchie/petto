class PetsController < ApplicationController
  def index
  end

  def create
    raise
    Pet.create(pet_params)

  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def pet_params
    params.require(:pet).permit(:name, :category, :breed, :gender, :description, :price)
  end
end

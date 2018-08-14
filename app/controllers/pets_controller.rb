class PetsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name)
  end

end

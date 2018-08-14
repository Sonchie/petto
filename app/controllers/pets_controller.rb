class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pets = policy_scope(Pet).all
  end

  def create
    Pet.create(pet_params)
  end

  def new
    @pet = Pet.new
    authorize(@pet)
    @user = current_user
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
    params.require(:pet).permit(:name, :category, :breed, :gender, :description, :price)
  end
end

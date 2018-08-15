class PetsController < ApplicationController
  before_action :set_pet, only: [:edit, :show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pets = policy_scope(Pet).all
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def edit
    authorize @pet
  end

  def show
  end

  def update
    if @pet.update(pet_params)
      @pet.user = current_user
      authorize @pet
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    authorize @pet
    @pet.destroy
    redirect_to pets_path
  end

 private

  def pet_params
    params.require(:pet).permit(:name, :category, :breed, :gender, :description, :price, :photo)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end

class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pets = policy_scope(Pet).all
  end

  def create
    
  end

  def new
    # raise
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
    params.require(:pet).permit(:name)
  end

end

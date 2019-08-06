class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  def index
    @pets = Pet.all
  end

  def show
    # raise
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    # raise
    @pet = Pet.create(strong_params_pet)
    redirect_to pet_path(@pet)
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # @pet = Pet.find(params[:id])
    @pet.update(strong_params_pet)
    redirect_to pets_path
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end


  private

  def strong_params_pet
    params.require(:pet).permit(:name, :address, :found_on, :specie)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end

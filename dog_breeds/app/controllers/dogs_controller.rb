class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new 
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save
    redirect_to @dog
  end
 
  def show
    @dog = Dog.find(params[:id])
  end

  private
    def dog_params
      params.require(:dog).permit(:breed, :size, :group, :best_suited_for)
    end

end

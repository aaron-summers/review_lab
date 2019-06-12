class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find params[:id]
  end

  def new
    @car = Car.new
    @mechanics = Mechanic.all
    @owners = Owner.all
  end

  def create
    @car = Car.create car_params
    redirect_to @car
  end

  private

  def car_params
    params.require(:car).permit(:name, :brand, :owner_id, :mechanic_id)
  end

end

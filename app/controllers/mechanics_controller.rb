class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find params[:id]
  end

  def new
    @mechanic = Mechanic.new
  end

  def create
    @mechanic = Mechanic.create mechanic_params
    redirect_to @mechanic
  end

  private

  def mechanic_params
    params.require(:mechanic).permit(:name)
  end

end

class CarsController < ApplicationController
  before_action :car, only: [:show]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
    respond_to do |format|
      if @car.save
        format.html{redirect_to @car, notice: "Car successfully recorded!"}
      else
        format.html {render action: 'new'}
      end
    end
  end

  private

  def car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:color, :year, :mileage, :description)
  end
end

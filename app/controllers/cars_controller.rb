class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
      @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end
end

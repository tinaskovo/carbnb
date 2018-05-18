class CarsController < ApplicationController

  before_action :set_car, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = Car.all
    if params[:search] && params[:search].present?
      @cars = Car.search(params[:search]).order("created_at DESC")
    else
      @cars = Car.all.order("created_at DESC")
    end
  end

  def show
    unless @car.longitude.nil? or @car.latitude.nil?
      car_array = [@car]
      @marker = car_array.map {|car| {lat: car.latitude, lng: car.longitude} }
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end


  private

    def car_params
      params.require(:car).permit(:make, :price, :year_made, :mileage, :engine_size, :car_model, :transmission, :bhp, :fuel_type, :seats, :doors, :photo)
    end

    def set_car
      @car = Car.find(params[:id])
    end
end

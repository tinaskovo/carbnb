class CarsController < ApplicationController
  def index
    @cars = Car.all
    if params[:search]
      @cars = Car.search(params[:search]).order("created_at DESC")
    else
      @Cas = Car.all.order("created_at DESC")
    end
  end

  def new
    @car = Car.new
  end

  def show
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
      params.require(:car).permit(:name)
    end

    def set_car
      @car = Car.find(params[:id])
    end
end

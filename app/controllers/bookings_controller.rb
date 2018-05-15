class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @car = Car.new
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def edit
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @car = @booking.car
    @booking.destroy
    redirect_to bookings_path
  end

  private

    def booking_params
      params.require(:booking).permit(:name)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end
end

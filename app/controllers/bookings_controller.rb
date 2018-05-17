class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    car = Car.find(params[:car_id])
    booking = Booking.new(booking_params)
    booking.car = car
    booking.user = current_user

    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :user)
  end
end

class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.assign_attributes(user_id: current_user.id)

    if @booking.save
      redirect_to flights_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    if current_user
      @flightId = params[:flight_id]
      @booking = Booking.new
    else
      redirect_to new_user_session_path
    end
  end

  def indexByUser
    if current_user
      @bookings = Booking.where(user_id: current_user.id)
      @user = current_user
    else
      redirect_to new_user_session_path
    end
  end



  private
  def booking_params
    params.require(:booking).permit(:nb_passengers, :class_seats, :flight_id)
  end

end

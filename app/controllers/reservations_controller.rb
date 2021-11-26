class ReservationsController < ApplicationController
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @user = current_user
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @user = current_user
    @reservation.vehicle = @vehicle
    @reservation.user = @user
    @reservation.save
    redirect_to reservations_path
  end

  def index
    raise
    @vehicles = Vehicle.where(user_id: current_user)
    @reservations = Reservation.where(user_id: current_user)
  end

  def destroy

  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end

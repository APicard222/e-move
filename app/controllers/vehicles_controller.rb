class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vehicles = Vehicle.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user

    if @vehicle.save
      redirect_to vehicles_path
    else
      render :new
    end
  end

#def deux méthodes

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)

  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:title, :description, :price, :photo)
  end
end

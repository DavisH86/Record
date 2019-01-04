class LocationsController < ApplicationController
  def index
    location = Location.all
    render json: location
  end

  def create
    newLocation = Location.new(location_params)
    if newLocation.save
      render json: newLocation
    else
      render json: {errors: newLocation.errors.full_messages}, status: :unprocessable_entity
  end

  def show
    location = Location.find(params[:id])
    render json: location
  end
end

class Api::V1::Public::LocationsController < ApplicationController
  def index
    render json: LocationFinder.find_locations_json(params[:country_code])
  end
end

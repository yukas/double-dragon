class Api::V1::Private::LocationsController < ApplicationController
  protect_with_basic_authentication
  
  def index
    render json: LocationFinder.find_locations_json(params[:country_code])
  end
end

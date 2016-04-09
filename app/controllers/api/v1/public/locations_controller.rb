class Api::V1::Public::LocationsController < ApplicationController
  def index
    locations = Location.by_country_code(params[:country_code])
    
    render json: locations.to_json
  end
end

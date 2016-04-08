class Api::V1::Public::LocationsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    location_groups = country.location_groups.where(panel_provider_id: country.panel_provider_id)
    locations = location_groups.map(&:locations).flatten
    
    render json: locations.to_json
  end
end

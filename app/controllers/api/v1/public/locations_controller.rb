class Api::V1::Public::LocationsController < ApplicationController
  def index
    locations = [{
      id: 1, name: "Minsk", external_id: 2, secret_code: 33
    }]
    
    render json: locations.to_json
  end
end

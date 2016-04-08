class Api::V1::Public::LocationsController < ApplicationController
  def index
    location = {
      id: 1, name: "Minsk", external_id: 2, secret_code: 33
    }
    
    render json: location.to_json
  end
end

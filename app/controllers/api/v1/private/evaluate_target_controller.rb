class Api::V1::Private::EvaluateTargetController < ApplicationController
  protect_with_basic_authentication
  
  def evaluate_target
    country = Country.find_by_country_code(params[:country_code])
    
    render json: { price: country.calculate_price }.to_json
  end
end
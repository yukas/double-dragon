class Api::V1::Private::EvaluateTargetController < ApplicationController
  protect_with_basic_authentication
  
  def evaluate_target
    country = Country.find_by_country_code(params[:country_code])
    
    price_calculator = PriceCalculator.price_calculator_for(country)
    
    render json: { price: price_calculator.calculate_price }.to_json
  end
end
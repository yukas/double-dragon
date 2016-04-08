class Api::V1::Private::EvaluateTargetController < ApplicationController
  protect_with_basic_authentication
  
  def evaluate_target
    render json: { price: 5 }.to_json
  end
end
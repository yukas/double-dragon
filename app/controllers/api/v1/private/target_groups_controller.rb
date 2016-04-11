class Api::V1::Private::TargetGroupsController < ApplicationController
  protect_with_basic_authentication
  
  def index
    target_groups = TargetGroup.by_country_code(params[:country_code])
    
    render json: target_groups.to_json
  end
end
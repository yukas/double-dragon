class Api::V1::Public::TargetGroupsController < ApplicationController
  def index
    target_groups = TargetGroup.by_country_code(params[:country_code])
    
    render json: target_groups.to_json
  end
end

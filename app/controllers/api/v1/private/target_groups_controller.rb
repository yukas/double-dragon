class Api::V1::Private::TargetGroupsController < ApplicationController
  protect_with_basic_authentication
  
  def index
    render json: TargetGroupFinder.find_target_groups_json(params[:country_code])
  end
end
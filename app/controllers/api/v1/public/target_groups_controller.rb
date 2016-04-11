class Api::V1::Public::TargetGroupsController < ApplicationController
  def index
    render json: TargetGroupFinder.find_target_groups_json(params[:country_code])
  end
end

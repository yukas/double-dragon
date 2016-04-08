class Api::V1::Public::TargetGroupsController < ApplicationController
  def index
    target_groups = [{
      id: 1, name: "Target Group", external_id: 2, parent_id: 1, secret_code: 33, panel_provider_id: 1
    }]
    
    render json: target_groups.to_json
  end
end

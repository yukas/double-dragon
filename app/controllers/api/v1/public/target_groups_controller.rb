class Api::V1::Public::TargetGroupsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    
    target_groups = country.target_groups.select do |target_group|
      target_group.panel_provider_id == country.panel_provider_id
    end
    
    render json: target_groups.to_json
  end
end

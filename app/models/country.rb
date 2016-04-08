class Country < ActiveRecord::Base
  belongs_to :panel_provider
  has_many :location_groups
  has_and_belongs_to_many :target_groups, -> { where("target_groups.parent_id is null") }
  
  def calculate_price
    panel_provider.calculate_price
  end
end

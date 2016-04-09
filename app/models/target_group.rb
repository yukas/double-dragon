class TargetGroup < ActiveRecord::Base
  belongs_to :panel_provider
  belongs_to :parent, class_name: "TargetGroup"
  has_and_belongs_to_many :countries
  has_many :children, class_name: "TargetGroup", foreign_key: "parent_id"
  
  scope :by_country_code, -> (country_code) {
    joins(:countries).
      where("countries.panel_provider_id = target_groups.panel_provider_id").
      where("countries.country_code = ?", country_code)
  }
end

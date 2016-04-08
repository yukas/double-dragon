class TargetGroup < ActiveRecord::Base
  belongs_to :panel_provider
  belongs_to :parent, class_name: "TargetGroup"
  has_and_belongs_to_many :countries
end

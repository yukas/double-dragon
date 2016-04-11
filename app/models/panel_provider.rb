class PanelProvider < ActiveRecord::Base
  validates :price_calculator_class_name, presence: true
end

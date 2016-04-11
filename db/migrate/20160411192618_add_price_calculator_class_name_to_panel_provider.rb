class AddPriceCalculatorClassNameToPanelProvider < ActiveRecord::Migration
  def change
    add_column :panel_providers, :price_calculator_class_name, :string
  end
end

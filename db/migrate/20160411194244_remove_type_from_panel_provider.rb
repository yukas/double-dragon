class RemoveTypeFromPanelProvider < ActiveRecord::Migration
  def change
    remove_column :panel_providers, :type, :string
  end
end

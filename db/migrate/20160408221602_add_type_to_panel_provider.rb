class AddTypeToPanelProvider < ActiveRecord::Migration
  def change
    add_column :panel_providers, :type, :string
  end
end

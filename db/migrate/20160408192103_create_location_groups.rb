class CreateLocationGroups < ActiveRecord::Migration
  def change
    create_table :location_groups do |t|
      t.integer :country_id
      t.integer :panel_provider_id
      t.string :name

      t.timestamps null: false
    end
  end
end

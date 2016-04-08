class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :panel_provider_id
      t.string :country_code

      t.timestamps null: false
    end
  end
end

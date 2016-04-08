class CreateCountriesTargetGroups < ActiveRecord::Migration
  def change
    create_join_table :countries, :target_groups do |t|
      # t.index [:country_id, :target_group_id]
      # t.index [:target_group_id, :country_id]
    end
  end
end

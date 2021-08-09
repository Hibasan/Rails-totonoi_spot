class RemoveColumnsSex < ActiveRecord::Migration[5.2]
  def change
    remove_column :rest_areas, :sex, :integer
    remove_column :saunas, :sex, :integer
    remove_column :water_baths, :sex, :integer
  end
end

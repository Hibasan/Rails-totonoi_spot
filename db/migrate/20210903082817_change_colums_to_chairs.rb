class ChangeColumsToChairs < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :chairs, :rest_areas
    remove_foreign_key :chairs, :sexes
    remove_foreign_key :saunas, :sexes
    remove_foreign_key :water_baths, :sexes

    remove_index :chairs, column: :rest_area_id
    remove_index :chairs, column: :sex_id
    remove_index :saunas, column: :sex_id
    remove_index :water_baths, column: :sex_id

    remove_column  :chairs, :rest_area_id, :bigint
    remove_column  :chairs, :sex_id, :bigint
    remove_column  :saunas, :sex_id, :bigint
    remove_column  :water_baths, :sex_id, :bigint

    add_column :chairs, :rest_area, :integer
    add_column :chairs, :sex, :integer
    add_column :saunas, :sex, :integer
    add_column :water_baths, :sex, :integer

    drop_table :sexes
    drop_table :rest_areas
  end
end

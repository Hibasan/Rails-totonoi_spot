class ChangeColumnOfRestAreas < ActiveRecord::Migration[5.2]
  def change
    remove_column :rest_areas, :inside_bath_chair, :integer
    remove_column :rest_areas, :inside_deck_chair, :integer
    remove_column :rest_areas, :inside_relax_chair, :integer
    remove_column :rest_areas, :inside_bench, :integer
    remove_column :rest_areas, :inside_bench_non_backrest, :integer
    remove_column :rest_areas, :outside_bath_chair, :integer
    remove_column :rest_areas, :outside_deck_chair, :integer
    remove_column :rest_areas, :outside_relax_chair, :integer
    remove_column :rest_areas, :outside_bench, :integer
    remove_column :rest_areas, :outside_bench_non_backrest, :integer
    remove_column :rest_areas, :comment, :string
    add_column :rest_areas, :area, :integer
    remove_foreign_key :rest_areas, :facilities
    remove_index :rest_areas, :facility_id
    remove_reference :rest_areas, :facility
  end
end

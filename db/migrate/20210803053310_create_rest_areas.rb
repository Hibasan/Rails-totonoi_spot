class CreateRestAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :rest_areas do |t|
      t.integer :sex
      t.integer :inside_bath_chair
      t.integer :inside_deck_chair
      t.integer :inside_relax_chair
      t.integer :inside_bench
      t.integer :inside_bench_non_backrest
      t.integer :outside_bath_chair
      t.integer :outside_deck_chair
      t.integer :outside_relax_chair
      t.integer :outside_bench
      t.integer :outside_bench_non_backrest
      t.string  :comment
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end

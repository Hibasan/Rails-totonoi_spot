class CreateChairs < ActiveRecord::Migration[5.2]
  def change
    create_table :chairs do |t|
      t.integer :bath
      t.integer :deck
      t.integer :relax
      t.integer :bench
      t.integer :bench_non_backrest
      t.string :comment
      t.references :facility, foreign_key: true
      t.references :sex, foreign_key: true
      t.references :rest_area, foreign_key: true
      t.timestamps
    end
  end
end

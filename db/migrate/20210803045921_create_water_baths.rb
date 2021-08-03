class CreateWaterBaths < ActiveRecord::Migration[5.2]
  def change
    create_table :water_baths do |t|
      t.integer :sex
      t.integer :temperature
      t.integer :intern
      t.string :comment
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end

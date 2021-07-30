class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :sex
      t.integer :dry, null: false, default: 3
      t.integer :light, null: false, default: 3
      t.integer :wide, null: false, default: 3
      t.string :comment
      t.references :user, foreign_key: true
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end

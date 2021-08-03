class CreateFavoriteFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_facilities do |t|
      t.references :facility, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

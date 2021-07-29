class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name,  null: false, index: true
      t.string :prefecture, null: false, index: true
      t.string :address, null: false, index: true
      t.string :homepage
      t.string :business_hours
      t.string :holiday
      t.string :fee
      t.string :payment
      t.string :comment
      t.text :image

      t.timestamps
    end
  end
end

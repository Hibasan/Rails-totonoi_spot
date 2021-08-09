class AddModelRef < ActiveRecord::Migration[5.2]
  def change
    add_reference :saunas, :sex, foreign_key: true
    add_reference :water_baths, :sex, foreign_key: true
  end
end

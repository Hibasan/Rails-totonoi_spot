class CreateSexes < ActiveRecord::Migration[5.2]
  def change
    create_table :sexes do |t|
      t.integer :sex
      t.timestamps
    end
  end
end

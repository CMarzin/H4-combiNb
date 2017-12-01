class CreateCombis < ActiveRecord::Migration[5.1]
  def change
    create_table :combis do |t|
      t.string :marque
      t.string :year
      t.string :owner
      t.integer :kilometers
      t.string :fueltype

      t.timestamps
    end
  end
end

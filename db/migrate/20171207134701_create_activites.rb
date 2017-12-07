class CreateActivites < ActiveRecord::Migration[5.1]
  def change
    create_table :activites do |t|
      t.string :titre
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end

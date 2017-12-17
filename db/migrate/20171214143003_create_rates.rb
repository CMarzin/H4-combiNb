class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :rate
      t.references :rateable, polymorphic: true

      t.timestamps
    end
  end
end

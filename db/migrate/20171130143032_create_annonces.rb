class CreateAnnonces < ActiveRecord::Migration[5.1]
  def change
    create_table :annonces do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :creator_id
      t.string :location
      t.string :start
      t.string :end
      t.string :combi_id

      t.timestamps
    end
  end
end

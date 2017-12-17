class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :startTime
      t.string :endTime
      t.string :annonce_id
      t.string :client_id

      t.timestamps
    end
  end
end

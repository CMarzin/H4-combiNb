class AddReferencesToBookings < ActiveRecord::Migration[5.1]
  def change
    def self.down
      remove_column :bookings, :annonce_id
    end
    def self.up
      add_reference :bookings, :annonce
    end
  end
end

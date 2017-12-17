class ChangeBookingIdType < ActiveRecord::Migration[5.1]
  def change
    def self.up
      change_column :booking, :id, :integer
    end
    def self.down
      change_column :booking, :id, :text
    end
  end
end

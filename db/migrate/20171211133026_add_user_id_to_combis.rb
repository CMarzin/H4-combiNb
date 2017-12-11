class AddUserIdToCombis < ActiveRecord::Migration[5.1]
  def change
    add_column :combis, :user_id, :integer
  end
end

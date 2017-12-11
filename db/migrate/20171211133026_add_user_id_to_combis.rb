class AddUserIdToCombis < ActiveRecord::Migration[5.1]
  def change
    unless column_exists? :combis, :user_id
      add_column :combis, :user_id, :integer
    end
  end
end

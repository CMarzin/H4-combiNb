class AddUserIdToActivite < ActiveRecord::Migration[5.1]
  def change
    unless column_exists? :activites, :user_id
      add_column :activites, :user_id, :integer
    end
  end
end

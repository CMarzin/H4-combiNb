class RemoveStatusFromAnnonce < ActiveRecord::Migration[5.1]
  def change
    remove_column :annonces, :status
  end
end

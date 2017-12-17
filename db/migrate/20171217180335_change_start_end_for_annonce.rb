class ChangeStartEndForAnnonce < ActiveRecord::Migration[5.1]
  def change
    rename_column :annonces, :start, :startTime
    rename_column :annonces, :end, :endTime
  end
end

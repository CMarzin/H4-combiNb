class AddCreatorIdForRating < ActiveRecord::Migration[5.1]
  def change
    unless column_exists? :rates, :created_by
      add_column :rates, :created_by, :integer
    end
  end
end

class AddRatingSystem < ActiveRecord::Migration[5.1]
  def change
    unless column_exists? :combis, :stars_number
      add_column :combis, :stars_number, :integer
    end
    unless column_exists? :annonces, :stars_number
      add_column :annonces, :stars_number, :integer
    end
  end
end

class AddAttachmentImageToActivites < ActiveRecord::Migration[4.2]
  def self.up
    change_table :activites do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :activites, :image
  end
end

class AddAttachmentAvatarToCombis < ActiveRecord::Migration[4.2]
  def self.up
    change_table :combis do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :combis, :avatar
  end
end

class AddAttachmentAvatarToFathers < ActiveRecord::Migration
  def self.up
    change_table :fathers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :fathers, :avatar
  end
end

class AddAttachmentAudioToProgressions < ActiveRecord::Migration
  def self.up
    change_table :progressions do |t|
      t.attachment :audio
    end
  end

  def self.down
    drop_attached_file :progressions, :audio
  end
end

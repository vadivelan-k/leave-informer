class AddMediaFieldsToUploads < ActiveRecord::Migration
  def self.up
    add_attachment :uploads, :media
  end

  def self.down
    remove_attachment :uploads, :media
  end
end

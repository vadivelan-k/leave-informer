class Upload < ActiveRecord::Base
  # attr_accessible :title, :body
  #~ attr_accessible :media
  #~ has_attached_file :media#, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #~ validates_attachment_content_type :media, :content_type => ["application/zip", "application/x-zip", "application/x-zip-compressed", "text/plain"]
end

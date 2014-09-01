class Image < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :photo,:styles => {:small => "120x120>"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

#require 'open-uri' 
class Movie < ActiveRecord::Base
  has_many :comments
  has_one :gallery
  has_many :theaters
  has_attached_file :avatar,:styles => {:small => "120x120>"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :video
	validates_attachment_content_type :video, :content_type => [ 'video/mp4', /\Avideo/]
 def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  def average_rating
    if self.comments.size > 0
        self.comments.average(:rating)
    else
        'undefined'
    end
    end
end


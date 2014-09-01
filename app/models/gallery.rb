class Gallery < ActiveRecord::Base
  belongs_to :movie,:foreign_key => "movie_id"
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true
end

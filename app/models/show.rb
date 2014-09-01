class Show < ActiveRecord::Base
  has_many :showtheaters
  has_many :theaters,:through => :showtheaters
end

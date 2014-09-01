class Showtheater < ActiveRecord::Base
  belongs_to :theater
  belongs_to :show
  has_many :tickets
end

class Theater < ActiveRecord::Base
  belongs_to :movie
  has_many :showtheaters
  has_many :shows,:through => :showtheaters
require 'csv'
  def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        theater_hash = row.to_hash # exclude the price field
        theater = Theater.where(id: theater_hash["id"])
          if theater.count == 1
            theater.first.update_attributes(theater_hash)
          else
            Theater.create!(theater_hash)
          end 
      end 
    end 
end

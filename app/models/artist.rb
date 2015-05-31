class Artist < ActiveRecord::Base
  has_many  :musical_albums

  validates :name, presence: true
end 

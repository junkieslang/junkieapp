class MusicalAlbum < ActiveRecord::Base
  belongs_to :artist
  has_many :musical_album_tracks

  validates :number, presence: true
  validates :title,  presence: true
  validates :artis,  presence: true
end
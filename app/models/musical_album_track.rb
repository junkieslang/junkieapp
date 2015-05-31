class MusicalAlbumTrack < ActiveRecord::Base
  belongs_to :musical_album
  
  validates :musical_album, presence: true
  validates :position, presence: true
  validates :name, presence: true, uniqueness: {scope: :musical_album_id, case_sensitive: false}
end  
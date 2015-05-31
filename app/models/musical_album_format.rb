class MusicalAlbumFormat < ActiveRecord::Base
  belongs_to :musical_album
  belongs_to :format

  validates :musical_album, presence: true
  validates :format, presence: true
  validates :format_id, uniqueness: {scope: :musical_album_id}
end
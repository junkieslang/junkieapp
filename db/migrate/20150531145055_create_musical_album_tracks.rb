class CreateMusicalAlbumTracks < ActiveRecord::Migration
  def change
    create_table :musical_album_tracks do |t|
      t.integer :musical_album_id
      t.integer :position
      t.string :track_name


 	  t.timestamp null: false 
    end

    add_foreign_key :musical_album_tracks, :musical_albums, column: :musical_album_id
  end
end

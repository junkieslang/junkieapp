class CreateMusicalAlbumFormats < ActiveRecord::Migration
  def change
    create_table :musical_album_formats do |t|
      t.integer :musical_album_id
      t.integer :sound_format_id

      t.timestamps null: false
    end

    add_foreign_key :musical_album_formats, :musical_albums, column: :musical_album_id
    add_foreign_key :musical_album_formats, :sound_formats, column: :sound_formats_id
  end
end

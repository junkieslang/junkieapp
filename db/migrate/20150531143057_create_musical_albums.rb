class CreateMusicalAlbums < ActiveRecord::Migration
  def change
    create_table :musical_albums do |t|
      t.string  :catalog_number
      t.integer :artist_id
      t.string  :title

      t.timestamps null: false
    end

    add_foreign_key :musical_albums, :artists, column: :artist_id
  end
end

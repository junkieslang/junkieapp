class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :musical_album_id
      t.float :total
    end
    
    add_index :orders, :musical_album_id

    add_foreign_key :orders, :musical_albums, column: :musical_album_id 

  end
end

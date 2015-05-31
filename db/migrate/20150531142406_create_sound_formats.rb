class CreateSoundFormats < ActiveRecord::Migration
  def change
    create_table :sound_formats do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

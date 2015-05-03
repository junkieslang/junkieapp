class CreateObjectReleases < ActiveRecord::Migration
  def change
    create_table :object_releases do |t|

      t.timestamps null: false
    end
  end
end

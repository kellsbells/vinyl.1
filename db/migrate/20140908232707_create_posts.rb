class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :album_name
      t.string :artist
      t.string :year
      t.string :intention
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

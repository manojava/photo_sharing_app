class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :name
      t.text :description
      t.string :place

      t.timestamps null: false
    end
  end
end

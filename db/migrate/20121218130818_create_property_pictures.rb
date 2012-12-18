class CreatePropertyPictures < ActiveRecord::Migration
  def change
    create_table :property_pictures do |t|
      t.string :title
      t.integer :property_id

      t.timestamps
    end
  end
end

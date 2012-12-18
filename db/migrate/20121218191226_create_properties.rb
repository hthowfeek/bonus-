class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :rooms
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :parking_allotment
      t.boolean :internet_included
      t.text :street_address
      t.string :property_type
      t.string :owner_id
      t.string :manager_id
      t.integer :price_per_period
      t.string :period_type
      t.string :purpose
      t.string :owner_name

      t.timestamps
    end
  end
end

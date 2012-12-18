class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact_email
      t.string :contact_phone
      t.boolean :admin

      t.timestamps
    end
  end
end

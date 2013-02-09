class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :street
      t.string :postal_code
      t.string :city

      t.timestamps
    end
  end
end

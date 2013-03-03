class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :shop_id
      t.integer :product_id
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
    add_index :prices, :shop_id
    add_index :prices, :product_id
  end
end

class CreateCartProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_products do |t|
      t.references :cart, null: false, foreign_key: true
      t.integer :product_id, null: false
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end

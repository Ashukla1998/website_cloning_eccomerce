class CreatePurchasedProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :purchased_products do |t|
      t.references :user, null: false, foreign_key: true
      t.references :Product, null: false, foreign_key: true
      t.references :PaymentSummary, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.decimal :product_price
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

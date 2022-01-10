class CreateOrderProductSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :order_product_sizes do |t|
      t.references :order_product, null: false, foreign_key: true
      t.references :product_size, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end

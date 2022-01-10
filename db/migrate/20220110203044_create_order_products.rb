class CreateOrderProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :order_products do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :product_color, null: false, foreign_key: true
      t.references :front_personalizacion, null: false, foreign_key: true
      t.references :back_personalizacion, null: false, foreign_key: true
      t.integer :quantity
      t.integer :subtotal
      t.integer :unit_price

      t.timestamps
    end
  end
end

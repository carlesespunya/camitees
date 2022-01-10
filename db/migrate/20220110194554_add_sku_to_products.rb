class AddSkuToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :sku, :integer
  end
end

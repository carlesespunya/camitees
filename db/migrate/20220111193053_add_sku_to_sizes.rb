class AddSkuToSizes < ActiveRecord::Migration[6.1]
  def change
    add_column :sizes, :sku, :integer
  end
end

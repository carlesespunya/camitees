class AddSkuToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :sku, :integer
  end
end

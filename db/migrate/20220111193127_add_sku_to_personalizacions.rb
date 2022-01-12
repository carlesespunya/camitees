class AddSkuToPersonalizacions < ActiveRecord::Migration[6.1]
  def change
    add_column :personalizacions, :sku, :integer
  end
end

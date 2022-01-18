class AddLinkToProductColors < ActiveRecord::Migration[6.1]
  def change
    add_column :product_colors, :link, :string
  end
end

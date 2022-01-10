class RemoveColorsFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :colors, :text
    remove_column :products, :prices, :text
    remove_reference :products, :category, null: false, foreign_key: true
  end
end

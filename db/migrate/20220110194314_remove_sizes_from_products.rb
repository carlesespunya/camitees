class RemoveSizesFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :sizes, :text
  end
end

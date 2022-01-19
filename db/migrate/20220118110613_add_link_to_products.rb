class AddLinkToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :link, :string
  end
end

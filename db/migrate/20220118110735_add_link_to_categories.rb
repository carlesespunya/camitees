class AddLinkToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :link, :string
  end
end

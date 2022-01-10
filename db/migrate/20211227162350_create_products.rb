class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :sizes, array: true, default: []
      t.text :colors, array: true, default: []
      t.text :prices, array: true, default: []
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

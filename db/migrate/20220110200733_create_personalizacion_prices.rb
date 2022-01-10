class CreatePersonalizacionPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :personalizacion_prices do |t|
      t.integer :price
      t.integer :min
      t.integer :max
      t.references :personalizacion, null: false, foreign_key: true

      t.timestamps
    end
  end
end

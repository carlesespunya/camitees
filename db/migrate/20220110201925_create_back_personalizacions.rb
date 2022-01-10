class CreateBackPersonalizacions < ActiveRecord::Migration[6.1]
  def change
    create_table :back_personalizacions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :personalizacion, null: false, foreign_key: true

      t.timestamps
    end
  end
end

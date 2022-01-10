class CreatePersonalizacions < ActiveRecord::Migration[6.1]
  def change
    create_table :personalizacions do |t|
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end

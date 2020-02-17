class CreateBreads < ActiveRecord::Migration[5.2]
  def change
    create_table :breads do |t|
      t.string :name
      t.string :img
      t.integer :price

      t.timestamps null: false
    end
  end
end

class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :description
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end

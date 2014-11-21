class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.string :description
    	t.decimal :price, scale: 2, precision: 10
      t.timestamps
    end
  end
end

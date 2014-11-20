class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :par_level_amount
      t.integer :price_per_par

      t.timestamps
    end
  end
end

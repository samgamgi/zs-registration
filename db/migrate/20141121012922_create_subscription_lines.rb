class CreateSubscriptionLines < ActiveRecord::Migration
  def change
    create_table :subscription_lines do |t|
    	t.integer :subscription_id
    	t.integer :product_id
    	t.integer :quantity
    	t.integer :price, scale: 2, precision: 10
    end
  end
end

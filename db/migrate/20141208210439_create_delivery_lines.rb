class CreateDeliveryLines < ActiveRecord::Migration
  def change
    create_table :delivery_lines do |t|

      t.timestamps
    end
  end
end

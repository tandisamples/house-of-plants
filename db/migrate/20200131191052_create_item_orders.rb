class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.integer :item_id
      t.integer :order_id
    end
  end
end

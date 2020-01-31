class EditNameOfItemOrders < ActiveRecord::Migration
  def up
    create_table :order_item do |t|
      t.integer :item_id
      t.integer :order_id
  end
end

  def down
  drop_table :item_orders
  end
end


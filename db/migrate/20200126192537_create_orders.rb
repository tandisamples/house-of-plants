class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :item_id 
      t.integer :user_id
      t.integer :total_price
    end
  end
end

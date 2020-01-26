class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title 
      t.text :name 
      t.integer :price
    end
  end
end

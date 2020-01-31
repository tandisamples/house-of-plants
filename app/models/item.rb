class Item < ActiveRecord::Base 
  belongs_to :categories
#  has_many :orders, through: :order_items
#  has_many :order_items
  
end
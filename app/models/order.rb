class Order < ActiveRecord::Base 
  belongs_to :users
  has_many :items, through: :order_items
  has_many :order_items, dependent: :destroy
  validates :items, presence: true 
  
  def total_amount
    self.items.sum("price")
  end
end
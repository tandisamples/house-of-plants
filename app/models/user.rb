class User < ActiveRecord::Base
  has_secure_password
  has_many :orders
  validates :email, presence: true 
  validates :email, uniqueness: true 
  # validates_format_of
end
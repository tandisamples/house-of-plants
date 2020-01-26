class User < ActiveRecord::Base 
  has_secure_password
  validates :email, presence: true 
  validates :email, uniqueness: true
  validates_format_of :email, 
end
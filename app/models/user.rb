class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :password, confirmation: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true
  validates :email, presence: true, :uniqueness => { :case_sensitive => false }
  validates_uniqueness_of :email
  
end

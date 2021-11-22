class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
end

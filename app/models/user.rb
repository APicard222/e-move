class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_name, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }
  # validates :email, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
  has_many :vehicles, dependent: :delete_all
end

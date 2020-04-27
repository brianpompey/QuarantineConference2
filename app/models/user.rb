class User < ApplicationRecord
    has_secure_password
    has_many :donations
    has_many :conferences, through: :donations
    has_one :user_interest
    validates :email, presence: true
    validates :name, presence: true
    validates :password, length: { minimum: 6 }
end

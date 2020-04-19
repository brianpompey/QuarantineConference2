class User < ApplicationRecord
    has_secure_password
    has_many :donations
    has_many :conferences, through: :donations
    has_one :user_interest
end

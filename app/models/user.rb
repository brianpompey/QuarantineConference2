class User < ApplicationRecord
    has_secure_password
    has_many :donations
    has_many :conferences, through: :donations
    has_one :user_interest
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: /\A\S+@.+\.\S+\z/ }
    validates :name, presence: true
    validates :password, presence: true

    scope :non_admin, -> {where(admin: false)}
end

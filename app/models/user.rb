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

    #scope method that only accepts users who aren't admins
    #so on the admin users index page, admin wont be included as a user
    scope :non_admin, -> {where(admin: false)}
end

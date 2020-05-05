class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :conference

    validates :amount, presence: true
end

class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :conference

    validates :amount, presence: true
    


    def valid_donation(conference)
        if self.amount < conference.min_donation
            self.errors.add(:amount, "Apologies, but the amount you've entered is less than the required amount for this conference")
            false
        else
            self.save
        end
    end
end

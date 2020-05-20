class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :conference

    validates :amount, presence: true, if: :valid_donation
    

    private

    def valid_donation
        if @donation.amount < @conference.min_donation
            errors.add(:amount, "Apologies, but the amount you've entered is less than the required amount for this conference")
        end
    end
end

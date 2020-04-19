class DonationsController < ApplicationController
    def create
        donation = Donation.create(donation_params)

    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

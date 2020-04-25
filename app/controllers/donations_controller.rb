class DonationsController < ApplicationController

    def new
        @conference = Conference.find(params[:id])
    end

    def create
        current_user.donations.create(donation_params)

    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

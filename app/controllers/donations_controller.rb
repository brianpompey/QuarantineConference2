class DonationsController < ApplicationController


    def create
        @conference = Conference.find(params[:id])
        current_user.donations.create(params[:user_id => current_user.user_id, :conference_id => @conference.id, :amount => @conference.min_donation])
        flash.now[:alert] = "You're registered! See you there!"
        redirect_to root_path
    end


#    private

#    def donation_params
#        params.require(:donation).permit(:user_id, :conference_id, :amount)
#    end
end

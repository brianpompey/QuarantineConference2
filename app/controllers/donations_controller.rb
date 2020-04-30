class DonationsController < ApplicationController

    def new
        @conference = Conference.find(params[:conference_id])
        @user = current_user
    end

    def create
        @conference = Conference.find(params[:id])
        current_user.donations.create(params[:user_id => current_user.user_id, :conference_id => @conference.id, :amount => @conference.min_donation])
        current_user.conferences << @conference
        flash.now[:alert] = "You're registered! See you there!"
        redirect_to conference_path(@conference)
    end


#    private

#    def donation_params
#        params.require(:donation).permit(:user_id, :conference_id, :amount)
#    end
end

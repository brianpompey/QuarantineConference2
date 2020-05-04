class DonationsController < ApplicationController
    before_action :require_login
    
    def new
        @conference = Conference.find(params[:conference_id])
        @user = current_user
    end

    def create
    #    byebug
        @conference = Conference.find(params[:donation][:conference_id])
        @donation = Donation.new(params[donation_params])

        if @donation.save
            flash.now[:notice] = "You're registered! See you there!"
            redirect_to conference_path(@conference)
        else
            flash.now[:alert] = "Sorry, Your donation was less than the required amount!"
            render 'new'
        end
    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

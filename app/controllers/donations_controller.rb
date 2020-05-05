class DonationsController < ApplicationController
    before_action :require_login
    
    def new
        @conference = Conference.find(params[:conference_id])
        @user = current_user
    end

    def create
    #    byebug
        @conference = Conference.find(params[:donation][:conference_id])
        @donation = Donation.new(donation_params)
    #    byebug
        if @donation.save
            flash[:notice] = "SignUp/In to Register!"
            redirect_to conference_path(@conference)
        else
            render 'new', alert: "Sorry, Your donation was less than the required amount!"
        end
    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

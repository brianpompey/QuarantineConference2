class DonationsController < ApplicationController
    before_action :require_login
    
    def new
        @conference = Conference.find(params[:conference_id])
        @donation = Donation.new
        @user = current_user
        @errors = []
    end

    def create
    #    byebug
        @conference = Conference.find(params[:donation][:conference_id])
        @donation = Donation.new(donation_params)
    #    raise @donation.inspect
    #    byebug
    
        if  @donation.valid_donation(@conference)
            redirect_to conference_path(@conference)
        else
            @errors = ["Hello"]
            render 'new'
        end
  
    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

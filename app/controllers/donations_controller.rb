class DonationsController < ApplicationController
    before_action :require_login
    
    def new
        @conference = Conference.find(params[:conference_id])
        @donation = Donation.new
        @user = current_user
    end

    def create
    #    byebug
        @conference = Conference.find(params[:donation][:conference_id])
        @donation = Donation.new(donation_params)
        raise @donation.inspect
    #    byebug
        
        if @donation.save
            redirect_to conference_path(@conference)
        else
            render 'new'
        end
  
    end


    private

    def donation_params
        params.require(:donation).permit(:user_id, :conference_id, :amount)
    end
end

class ConferencesController < ApplicationController
#    before_action :require_login
#    skip_before_action :require_login, only: [:index]

    def index
        @conferences = Conference.all
    end

    def show
        @conference = Conference.find(params[:id])
    end


    #only admins can add/edit conferences
    def new
        @conference = Conference.new
    end

    def create
        @conference = Conference.create(conference_params)
        redirect_to "/conferences/#{@conference.id}/workshops/new"
    end



    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category)
    end
end

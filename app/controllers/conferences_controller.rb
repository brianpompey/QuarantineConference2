class ConferencesController < ApplicationController

    def index
        @conferences = Conference.all
    end


    #only admins can add/edit conferences
    def new
        @conference = Conference.new
    end

    def create
        @conference = Conference.create(conference_params)
    end



    private

    def conference_params
        params.require(:conference).permit(:name, :date_and_time, :min_donation, :keynote, :category)
    end
end

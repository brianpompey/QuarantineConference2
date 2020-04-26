class Admin::ConferencesController < ApplicationController


    def new
        @conference = Conference.new
    end

    def create
        @conference = Conference.create(conference_params)
        redirect_to "/admin/conferences/#{@conference.id}/workshops/new"
    end

    def admin_index
        @conferences = Conference.all
    end

    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category)
    end
end
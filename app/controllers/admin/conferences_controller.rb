class Admin::ConferencesController < ApplicationController
    before_action :require_login


    def new
        if current_user.admin?
            @conference = Conference.new
            3.times { @conference.workshops.build }
        else
            redirect_to root_path, alert: "Error! Admin privilege only"
        end
    end

    def create
        @conference = Conference.create(conference_params)
        redirect_to root_path
    end

    def admin_index
        @conferences = Conference.all
    end

    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category, workshops_attributes: [:name, :description])
    end
end
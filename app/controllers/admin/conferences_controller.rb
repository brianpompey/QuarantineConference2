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
        if current_user.admin
            @conference = Conference.new(conference_params)
            if @conference.save
                redirect_to root_path
            else
                render 'new'
            end
        else
            redirect_to root_path, alert: "Error! Admin privilege only"
        end
    end

    def admin_index
        if current_user.admin?
            @conferences = Conference.all
        else
            redirect_to root_path, alert: "Error! Admin privilege only"
        end
    end

    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category, workshops_attributes: [:name, :description])
    end
end
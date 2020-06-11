class Admin::ConferencesController < ApplicationController
    before_action :require_login
    before_action :check_admin


    def new
        @conference = Conference.new
        3.times { @conference.workshops.build }
    end

    def create
        @conference = Conference.new(conference_params)
        if @conference.save
            redirect_to super_index_path
        else
            render 'new'
        end
    end


    def admin_index
        @conferences = Conference.all
    end

    def destroy
        @conference = Conference.find(params[:id])
    end

    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category, workshops_attributes: [:name, :description])
    end
end
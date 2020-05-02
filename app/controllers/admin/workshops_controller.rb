class Admin::WorkshopsController < ApplicationController
    before_action :require_login
    
    #only admins can add/edit conference workshops
    def new
        @conference = Conference.find(params[:id])
    end

    def create
        @conference = Conference.find(params[:workshop][:conference_id])
        @conference.workshops.build(workshop_params)
        if @conference.save
            redirect_to root_path
        else
            render :new
        end
    end


    private

    def workshop_params
        params.require(:workshop).permit(:name, :description, :conference_id)
    end
end

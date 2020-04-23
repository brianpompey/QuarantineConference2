class WorkshopsController < ApplicationController
    #only admins can add/edit conference workshops
    def new
        @conference = Conference.find(params[:id])
    end

    def create
        byebug
        @conference = Conference.find(params[:id])
        @conference.workshop.create(workshop_params)
        redirect_to root_path
    end


    private

    def workshop_params
        params.require(:workshop).permit(:name, :description, :conference_id)
    end
end

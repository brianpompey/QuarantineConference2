class WorkshopsController < ApplicationController
    #only admins can add/edit conference workshops
    def new
        @conference = Conference.find(params[:id])
    end

    def create
        @conference = Conference.find(params[:id])
        @workshop = Workshpp.new(workshop_params)
    end


    private

    def workshop_params
        params.require(:workshop).permit(:name, :description)
    end
    end
end

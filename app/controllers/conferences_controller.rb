class ConferencesController < ApplicationController


    def index
        @conferences = Conference.all
    end
   

    def search_index
        #search form on regular index page that redirects to this one
        #with the results of the search params
        @category = params[:category]
        @conferences = Conference.searched(@category)
    end

    def show
        @conference = Conference.find(params[:id])
        if !current_user
            flash[:notice] = "SignUp/In to Register!"
    #    elsif @conference.current_user
    #        flash[:notice] = "Your're Refistered!"
        end

    end



    private

    def conference_params
        params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category)
    end
end

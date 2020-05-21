class UserInterestsController < ApplicationController
    before_action :require_login
    
    def new
     #   byebug
        @user = current_user
    #    @conferences = Conference.all
    end

    def create
     #   byebug
        current_user.create_user_interest(user_interest_params)
        redirect_to user_path(current_user)
    end

    def edit 
    #    byebug
        @user = current_user
        #something wrong here
        @user_interest = current_user.user_interest
    end

    def update
    #    byebug
        if current_user.user_interest.update(user_interest_params)
            redirect_to user_path(current_user)
        else
            render 'edit'
        end
    end

    private

    def user_interest_params
        params.require(:user_interest).permit(:school, :company, :work_experience, :looking_for_work, :code_skills, :user_id)
    end
end

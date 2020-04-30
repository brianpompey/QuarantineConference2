class UserInterestsController < ApplicationController
    def new
        @user = current_user
    end

    def create
        current_user.create_user_interest(user_interest_params)
        redirect_to "/users/#{current_user.id}"
    end

    def edit 
        @user = current_user
        @user_interest = UserInterest.find(params[:id])
    end

    def update
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

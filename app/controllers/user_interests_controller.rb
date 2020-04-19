class UserInterestsController < ApplicationController
    def new
        @user = User.find(params[:id])
    end

    def create
        @user = User.find(params[:id])
        @user_interest = User_interest.new(user_interest_params)
    end


    private

    def user_interest_params
        params.require(:user_interest).permit(:school, :company, :work_experience, :looking_for_work, :code_skills, :submit_resume)
    end
end

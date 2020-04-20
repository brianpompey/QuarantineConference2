class UserInterestsController < ApplicationController
    def new
        @user = User.find(params[:id])
    end

    def create
        @user = User.find(params[:id])
        @user.user_interest = UserInterest.new(user_interest_params)
        redirect_to user_path(@user)
    end


    private

    def user_interest_params
        params.require(:user_interest).permit(:school, :company, :work_experience, :looking_for_work, :code_skills, :user_id)
    end
end

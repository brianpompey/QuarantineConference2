class ApplicationController < ActionController::Base
    helper_method :current_user


    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end


    private
    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

    def check_admin
        redirect_to root_path, alert: "Error! Admin privilege only" unless current_user.admin
    end
end

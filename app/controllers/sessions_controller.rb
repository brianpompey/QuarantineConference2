class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            if @user.admin
                redirect_to "/admin/conferences/admin_index.html.erb"
            else
                redirect_to root_path
            end
        else
            flash.now[:alert] = "Email or password is invalid"
            render "new"
        end
    end



    def destroy
        session.delete("user_id")
        redirect_to root_path
    end
    

end

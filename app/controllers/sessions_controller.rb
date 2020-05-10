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

    def xcreate
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.image = auth['info']['image']
        end
       
        session[:user_id] = @user.id
       
        render 'users/hello'
    end



    def destroy
        session.delete("user_id")
        redirect_to root_path
    end

    private
 
    def auth
        request.env['omniauth.auth']
    end
    

end

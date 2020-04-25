class SessionsController < ApplicationController

    def new
    end

    def create
    #    byebug
#if auth_hash = request.env["omniauth.auth"]
 #           user = User.from_omniauth(auth_hash)
  #          session[:user_id] = user.id
   #         redirect_to root_path
        
    #    else

        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            flash.now[:alert] = "Email or password is invalid"
            render "new"
        end
     #   end
    end

#    def omniauth
#        pp request.env['omniauth.auth']
#
#        session[:name] = request.env['omniauth.auth']['info']['name']
#        session[:omniauth_data] = request.env['omniauth.auth']

#        redirect_to root_path
    
#    end


    def destroy
        session.delete("user_id")
        redirect_to root_path
    end
end

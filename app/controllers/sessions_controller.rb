class SessionsController < ApplicationController

    # def new 
    #     if logged_in?
    #         redirect_to parcels_path
    #     end
    # end

    # def create 
    #     user = User.find_by(email: params[:email])
    #     if user && user.authenticate(params[:password])
    #         session[:user_id] = user.id 
    #         redirect_to user_path(user)
    #     else   
    #         flash[:nonexistent_user] = 'Login attempt for a nonexistent user.Please try again.'
    #         redirect_to login_path
    #     end
    # end

    # def destroy 
    #     session.clear
    #     redirect_to login_path
    # end
end

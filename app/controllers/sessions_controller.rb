class SessionsController < ApplicationController

    # skip_before_action :authorized, only: [:create]
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {error: "Invalid username or password"}, status: :unathorized
        end
    end

    #logging out the user
    def destroy
        user = User.find(session[:user_id])
        if user
            user.destroy
            head :no_content
        else
            render json: {error: "user not found"}, status: :not_found
        end


    end
end
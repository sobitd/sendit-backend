class UsersController < ApplicationController
    
    skip_before_action :authorized, only: [:create]

    ##Signing up a new user
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
        end
    end

    #autologin feature
    #if the user leaves the page, they will not be logged out
    def show
        user = User.find(session[:user_id])
        render json: user
    end

    private

    ##params from frontend allowed to be posted to the db
    def user_params
        params.permit(:first_name,:last_name,:email_address,:phone_number,:username,:password)
    end
end
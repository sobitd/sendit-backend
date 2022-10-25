class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def user_params
        params.permit(:first_name,:last_name,:email_address,:phone_number,:username,:password,:password_confirmation)
    end
end
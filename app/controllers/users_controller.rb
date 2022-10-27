class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    #before_action :find_user, except: %i[create index]
    #before_action :authorize_request, except: :login
    #skip_before_action :verify_authenticity_token

    # def index 
    #     user = User.all
    #     render json: user ,status: :ok
    # end

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
          render json: {user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: "failed to create user" }, status: :unprocessable_entity
        end
    end


    private

    def user_params
        params.permit(:first_name, :last_name,:email_address,:phone_number,:username,:password)
    end
end

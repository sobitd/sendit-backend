class SessionsController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  # disables CSRF middleware (an error that came up severally when making requests to db)

  before_action :authorize
  skip_before_action :authorize, only: :create
  # skip_before_action :verify_authenticity_token

  # logging in users
  def create
    user = User.find_by(email_address: params[:email_address])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      render json: user.username, status: :ok
    else
      render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    end
  end

  # logging out the user
  def destroy
    if session[:user_id]
      session.delete :user_id
      head :no_content
    else
      render json: { errors: ['You are logged out. Please login'] }, status: :unauthorized
    end
  end
end

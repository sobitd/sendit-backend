class UsersController < ApplicationController
  # skip_before_action :authorize, only: :create
  # skip_before_action :verify_authenticity_token

  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  # #Signing up a new user
  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # def admin
  #     if !user.isAdmin?
  #         redirect_to
  # end

  # # autologin feature
  # if the user leaves the page, they will not be logged out
  # def show
  #     user = User.find(session[:user_id])
  #     render json: user
  # end

  # DELETE /users/:id - delete user account
  def destory
    user = User.find(params[:id])
    user.delete
    head :no_content
  end

  private

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :email_address,
      :phone_number,
      :username,
      :password,
      :isAdmin
    )
  end
end

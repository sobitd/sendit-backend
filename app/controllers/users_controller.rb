class UsersController < ApplicationController
  # GET /users
  def index
    users = User.all
    render json: users, status: :ok
  end

  # GET /users/:id - current logged in user
  def show
    render json: @current_user
  end

  # POST /users - create a new user account
  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  # DELETE /users/:id - delete user account
  def destory
    user = User.find(params[:id])
    user.delete
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(
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

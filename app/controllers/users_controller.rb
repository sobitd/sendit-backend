class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, except: %i[new create]
  before_action :set_user, except: %i[new create]

  def new
    if !logged_in?
      @user = User.new
    else
      redirect_to parcels_path
    end
  end

  def create
    @user = User.new(user_params(:first_name, :last_name, :email_address, :phone_number, :password))
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    redirect_to root_path unless @user
    @orders = current_user.orders
  end

  def edit
    if @user.id == current_user.id
      render :edit
    else
      flash[:cannot_change_user] = 'You cannot make this change. You are not the owner'
      redirect_to user_path(@user)
    end
  end

  def update
    if @user.update(user_params(:email_address, :password))
      flash[:user_edited] = 'Login information has been updated successfully!'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if @user.id == current_user.id
      @user.destroy
      flash[:deleted_account] =
        'Account has been deleted. If you would like to send a parcel in the future, sign up again at any time.'
      redirect_to signup_path
    else
      redirect_to user_path(@user)
    end
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def set_user
    @user = User.find_by_id(params[:id])
    unless @user
      flash[:user_not_found] = 'User does not exist.'
      redirect_to root_path
    end
  end
end

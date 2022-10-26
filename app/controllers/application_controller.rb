class ApplicationController < ActionController::Base
  include ApplicationHelper

  private

  def redirect_if_not_logged_in
    unless logged_in?
      flash[:not_logged_in] = 'You need to be logged in first, in order to view what you would like to see.'
      redirect_to login_path
    end
  end
end

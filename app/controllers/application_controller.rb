class ApplicationController < ActionController::API
  skip_before_action :verify_authenticity_token
  
  include ActionController::Cookies
  
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
  #before_action :authorize


  # only authorized users can login especially using the autologin feauture
  private

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def authorize
    @current_user = User.find_by(id: session[:user_id])
    render json: { errors: ['Not Authorized'] }, status: :unathorized unless @current_user
  end
end

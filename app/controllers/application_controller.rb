class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  include ActionController::Cookies
  wrap_parameters format: []
  before_action :authorize

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

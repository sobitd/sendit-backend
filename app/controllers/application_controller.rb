class ApplicationController < ActionController::Base
    include ActionController::Cookies
    before_action :authorized
    
    # only authorized users can login especially using the autologin feauture
    
    def authorized
        return render json: {error: "Not Authorized"} status: :unathorized unless session.include? :user_id
    end
end

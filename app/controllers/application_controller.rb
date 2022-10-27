class ApplicationController < ActionController::Base
    #include ActionControlller::Cookies
   before_action :authorized
   protect_from_forgery with: :null_session

    def encode_token(payload)
        JWT.encode(payload, 'alpha')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'alpha',true, algorithm: 'HS256')
            rescue JWT::DecodeError
                    nil
            end
        end
    end


    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id:user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: {message: 'kindly you have to login'}, status: :unauthorized unless logged_in?
    end

end

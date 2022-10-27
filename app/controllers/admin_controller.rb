
# class AdminController < ApplicationController
    
#     def update
#         user = User.find(id: session[:user_id])
       
#         if
#             user.isAdmin == true
#             user.update(user_params)
            
#         else
#           render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#         end
#       end
#       private

#   def user_params
#     params.permit(
      
#       :username
      
#     )
#   end
# end
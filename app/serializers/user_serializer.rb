class UserSerializer < ActiveModel::Serializer
  attributes :id,:first_name, :last_name, :email_address, :phone_number,:username,:password_digest,:isAdmin
end

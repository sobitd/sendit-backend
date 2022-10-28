class ParcelSerializer < ActiveModel::Serializer
  attributes :id, :recipient_address, :recipient_address,:recipient_contact,:weight,:from,:destination,:user_id
end

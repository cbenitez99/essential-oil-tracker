class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :user_oils
  end
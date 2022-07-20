class UsersSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :oils
end
class OilSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :created_at
  end
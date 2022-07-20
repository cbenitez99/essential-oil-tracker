class OilSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :amount, :created_at
  end
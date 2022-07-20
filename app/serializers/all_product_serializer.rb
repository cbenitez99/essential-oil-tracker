class AllProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :amount
end

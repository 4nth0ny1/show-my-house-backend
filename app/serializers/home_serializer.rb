class HomeSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :address, :description, :price

end

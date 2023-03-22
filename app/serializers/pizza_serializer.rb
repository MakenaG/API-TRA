class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
  belongs_to :restaurant
end
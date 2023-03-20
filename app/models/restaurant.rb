class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

   # Add some validations for the restaurant attributes
   validates :name, presence: true, uniqueness: true
   validates :address, presence: true
   validates :phone_number, presence: true
end

class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

    # Add some validations for the pizza attributes
    # validates :name, presence: true, uniqueness: true
    # validates :toppings, presence: true
end

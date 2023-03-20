class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

    # Add some validations for the pizza attributes
    validates :name, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :toppings, presence: true
end

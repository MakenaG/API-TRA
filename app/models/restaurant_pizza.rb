class RestaurantPizza < ApplicationRecord
  # belongs_to :restaurant
  # belongs_to :pizza
  belongs_to :restaurant
  belongs_to :pizza

  # add a price attribute to the model
  attribute :price, :integer

  # validate that price is present and between 1 and 30
  validates :price, presence: true, inclusion: { in: 1..30 }
end

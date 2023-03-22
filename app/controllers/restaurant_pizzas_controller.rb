class RestaurantPizzasController < ApplicationController
  # define the create action that responds to POST /restaurant_pizzas
  def create 
    # create a new restaurant pizza with params and assign it to an instance variable @restaurant_pizza
    @restaurant_pizza = RestaurantPizza.new(params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id))

    # if @restaurant_pizza is saved successfully
    if @restaurant_pizza.save 
      # render its associated pizza as JSON data with only id, name, and ingredients attributes 
      render json: @restaurant_pizza.pizza.as_json(only: [:id, :name, :ingredients])
    else 
      # otherwise render an error message as JSON data with status code 422 (unprocessable entity)
      render json: { errors: @restaurant_pizza.errors.full_messages }, status: :unprocessable_entity  
    end  
  end
end

  
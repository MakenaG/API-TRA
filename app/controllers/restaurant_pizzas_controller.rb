class RestaurantPizzasController < ApplicationController
    # define the create action that responds to POST /restaurant_pizza 
    def create 
      # create a new restaurant pizza with params and assign it to an instance variable @restaurant pizza 
      @restaurant pizza = RestaurantPizza.new(params.require(:price).permit(:pizza_id, :restuarant_id))
  
      # if @restuarant pizza is saved successfully 
      if @restuarant pizza.save 
        # render its associated pizza as JSON data with only id name and ingredients attributes 
        render json: @restuarant pizza.pizza.as_json(only: [:id, :name, :ingredients])
      else 
        # otherwise render an error message as JSON data with status code 422 (unprocessable entity) 
        render json: { errors: @restuarant pizza.errors.full_messages }, status: :unprocessable_entity  
      end  
     end   
  end
  
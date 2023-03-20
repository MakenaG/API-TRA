class RestaurantsController < ApplicationController
    # define the index action that responds to GET /restaurants
    def index
      # get all the restaurants from the database and assign them to an instance variable @restaurants
      @restaurants = Restaurant.all
  
      # render the @restaurants as JSON data with only the id, name and address attributes
      render json: @restaurants.as_json(only: [:id, :name, :address])
    end
  
    # define the show action that responds to GET /restaurants/:id 
    def show 
      # find the restaurant by its id from params and assign it to an instance variable @restaurant 
      @restaurant = Restaurant.find_by(id: params[:id])
  
      # if @restaurant exists 
      if @restaurant 
        # render it as JSON data with its id, name, address and pizzas attributes 
        render json: @restaurant.as_json(only: [:id, :name, :address], include: { pizzas: { only: [:id, :name] } })
      else 
        # otherwise render an error message as JSON data with status code 404 (not found) 
        render json: { error: "Restaurant not found" }, status: :not_found 
      end 
    end 
  
    # define the destroy action that responds to DELETE /restuarants/:id 
    def destroy 
      # find the restaurant by its id from params and assign it to an instance variable @restaurant 
      @restaurant = Restaurant.find_by(id: params[:id])
  
      # if @restaurant exists  
      if @restaurant  
        # delete all its associated restaurant_pizzas first (dependent destroy)  
        @restaurant.restaurant_pizzas.destroy_all 
  
        # then delete it from database  
        @restaurant.destroy 
  
        # render an empty response body with status code 204 (no content)  
        head :no_content  
      else  
        # otherwise render an error message as JSON data with status code 404 (not found)  
        render json: { error: "Restaurant not found" }, status: :not_found  
      end  
     end   
  end
class PizzasController < ApplicationController
    # define the index action that responds to GET /pizzas
    def index
      # get all the pizzas from the database and assign them to an instance variable @pizzas
      @pizzas = Pizza.all
  
      # render the @pizzas as JSON data with only the id, name and ingredients attributes
      render json: @pizzas.as_json(only: [:id, :name, :ingredients])
    end
  end
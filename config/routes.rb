Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 # add a route for GET /restaurants that maps to the index action of the restaurants controller
 get "/restaurants", to: "restaurants#index"

 # add a route for GET /restaurants/:id that maps to the show action of the restaurants controller
 get "/restaurants/:id", to: "restaurants#show"

 # add a route for DELETE /restaurants/:id that maps to the destroy action of the restaurants controller
 delete "/restaurants/:id", to: "restaurants#destroy"

 # add a route for GET /pizzas that maps to the index action of the pizzas controller
 get "/pizzas", to: "pizzas#index"

 # add a route for POST /restaurant_pizzas that maps to the create action of the restaurant_pizzas controller
 post "/restaurant_pizzas", to: "restaurant_pizzas#create"
end

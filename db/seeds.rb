# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all 
Pizza.destroy_all 

r1 = Restaurant.create(name: "Pizza Hut") 
r2 = Restaurant.create(name: "Domino's") 
r3 = Restaurant.create(name: "Papa John's") 

p1 = Pizza.create(name: "Pepperoni") 
p2 = Pizza.create(name: "Cheese") 
p3 = Pizza.create(name: "Veggie") 

RestaurantPizza.create(restaurant: r1, pizza: p1) 
RestaurantPizza.create(restaurant: r1, pizza: p2) 
RestaurantPizza.create(restaurant: r2, pizza: p2) 
RestaurantPizza.create(restaurant: r2, pizza: p3) 
RestaurantPizza.create(restaurant: r3, pizza: p1) 
RestaurantPizza.create(restaurant: r3, pizza: p3)

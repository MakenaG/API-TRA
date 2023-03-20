# Pizzas Restaurants
This is a ‘mini’ Rails application that implements associations between models. The application allows users to create and manage pizzas and restaurants.

# Models
The application has two models: Pizza and Restaurant.

# Pizza
A pizza has the following attributes:

name: string
price: decimal
toppings: string
restaurant_id: integer
A pizza belongs to one restaurant. This means that each pizza record has a foreign key restaurant_id that references the id of the restaurant it belongs to.

# Restaurant
A restaurant has the following attributes:

name: string
address: string
phone_number: string
A restaurant has many pizzas. This means that a restaurant can have zero or more pizza records associated with it.

# Associations
The application uses Active Record associations to declare and use the connection between the two models. Associations are implemented using macro-style calls, such as belongs_to and has_many, that add features and methods to the models.

For example, by declaring that a pizza belongs_to a restaurant, we instruct Rails to maintain primary key-foreign key information between instances of the two models, and we also get utility methods such as pizza.restaurant and restaurant.pizzas.

To learn more about the different types of associations and how they work in Rails, you can refer to Active Record Associations — Ruby on Rails Guides1.

# Installation
To install and run this application locally, you need to have Ruby and Rails installed on your machine. You can follow these steps:

 . Clone this repository to your local machine.

 . Navigate to the project directory and run bundle install to install all the dependencies.

 . Run rails db:migrate to create and set up the database tables.

 . Run rails db:seed to populate some sample data (optional).

 . Run rails server to start the local server.

Visit http://localhost:3000/ in your browser to see the application.

# Usage
The application has a simple user interface that allows you to perform basic CRUD (create, read, update, delete) operations on pizzas and restaurants.

# You can access the following pages:

/pizzas: This page shows a list of all pizzas in the database. You can click on each pizza name to see its details, edit or delete it. You can also click on “New Pizza” to create a new pizza record.
/pizzas/:id: This page shows the details of a specific pizza with its id. You can see its name, price, toppings and restaurant name. You can also edit or delete this pizza record.
/restaurants: This page shows a list of all restaurants in the database. You can click on each restaurant name to see its details, edit or delete it. You can also click on “New Restaurant” to create a new restaurant record.
/restaurants/:id: This page shows the details of a specific restaurant with its id. You can see its name, address, phone number and pizzas it has. You can also edit or delete this restaurant record.
You can use these pages to create your own pizzas and restaurants records and explore how associations work in Rails.

# License
This project is licensed under Apache License.

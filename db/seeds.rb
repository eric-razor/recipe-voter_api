# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
eric = User.create!(name: "erika", email:"erica@email.com",password:"password")
eric.dishes.create(category:"Breakfast")
pancakes = Card.create!(recipe_name:"homemade pancakes", recipe_steps:"1. pick up the phone... 2. etc", recipe_ingredients:"self rising flour, eggs, sugar, milk")
pancakes.dishes.create(category:"Breakfast")
# breakfast = Dish.create!(category: "Breakfast")

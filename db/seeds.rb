# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
eric = User.create!(name: "eric", email:"eric@email.com",password:"password")
pancakes = Card.create!(recipe_name:"homemade pancakes", recipe_steps:"1. put stuff in bowl 2. put more stuff 3. cook 4. enjoy", recipe_ingredients:"self rising flour, eggs, sugar, milk", user_id: 1)
pfr = Card.create!(recipe_name: "Fried rice", recipe_steps:"1.Cook rice 2. put stuff in it 3. enjoy", recipe_ingredients:"rice, veggies, stuff u wanna put in it idk", user_id: 1)

# breakfast = Dish.create!(category: "Breakfast")

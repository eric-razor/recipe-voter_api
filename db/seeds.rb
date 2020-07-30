# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

person = User.create!(username: "boloni", email:"e@em.com",password:"password")
burger = RecipeCard.create!(recipe_name:"Burger",recipe_steps:"1.open package, 2.cook it 3. eat it")

# dish = Dish.create!(name:"American") 

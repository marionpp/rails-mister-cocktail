# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating Cocktails...'
mojito = Cocktail.create!(name: "Mojito")
bloody_mary = Cocktail.create!(name: "Bloody Mary")
margarita = Cocktail.create!(name: "Margarita")
puts 'Finished!'

puts 'Creating Ingredients...'
lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint_leaves = Ingredient.create!(name: "mint leaves")
rhum = Ingredient.create!(name: "rhum")
tomato_juice = Ingredient.create!(name: "tomate")
tequila = Ingredient.create!(name: "tequila")
vodka = Ingredient.create!(name: "vodka")
puts 'Finished!'

puts 'Creating Doses...'
Dose.create!(description: "2 cl", cocktail: margarita, ingredient: tequila)
Dose.create!(description: "6", cocktail: mojito, ingredient: mint_leaves)
Dose.create!(description: "1.5 oz", cocktail: mojito, ingredient: rhum)
Dose.create!(description: "4,5 cl", cocktail: bloody_mary, ingredient: vodka)
Dose.create!(description: "9 cl", cocktail: bloody_mary, ingredient: tomato_juice)
puts 'Finished!'
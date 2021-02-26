# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database"
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating Mojito...'
file = URI.open('https://images.unsplash.com/photo-1599021456807-25db0f974333?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=979&q=80')
mojito = Cocktail.create!(name: 'Mojito')
mojito.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
puts 'Finished!'

puts 'Creating Bloody Mary...'
file = URI.open('https://images.unsplash.com/photo-1541546339599-ecdbfcf77378?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1634&q=80')
bloody_mary = Cocktail.create!(name: 'Bloody Mary')
bloody_mary.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
puts 'Finished!'

puts 'Creating Margarita...'
file = URI.open('https://images.unsplash.com/photo-1601924381523-019b78541b95?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
margarita = Cocktail.create!(name: 'Margarita')
margarita.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
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


puts 'Creating Photos...'
file = URI.open('https://images.unsplash.com/photo-1601924381523-019b78541b95?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
cocktail = Cocktail.create!(name: 'Pina')
cocktail.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
puts 'Finished!'



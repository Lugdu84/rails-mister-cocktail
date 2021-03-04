# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts 'Destroy all ingredients...'
Ingredient.destroy_all

puts 'Creating 3 ingredients...'
Ingredient.create(name: 'rhum foncé épicé')
Ingredient.create(name: 'soda au gingembre The Great Jamaican Old Tyme')
Ingredient.create(name: 'lime')
Ingredient.create(name: 'glaçons')

puts 'Ingredients ok !'

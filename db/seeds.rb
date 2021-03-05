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
Ingredient.create(name: 'rhum')
Ingredient.create(name: 'feuilles de menthe')
Ingredient.create(name: 'jus de fruit exotiques')
Ingredient.create(name: 'glaçons')
Ingredient.create(name: 'jus de citron')
Ingredient.create(name: 'sirop de sucre de canne')
Ingredient.create(name: 'eau gazeuse')

puts 'Ingredients ok !'

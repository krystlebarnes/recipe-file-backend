# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


breakfast = MealType.create(name: "Breakfast")
morning_snack = MealType.create(name: "Morning Snack")
lunch = MealType.create(name: "Lunch")
afternoon_snack = MealType.create(name: "Afternoon Snack")
dinner = MealType.create(name: "Dinner")
midnight_snack = MealType.create(name: "Midnight Snack")
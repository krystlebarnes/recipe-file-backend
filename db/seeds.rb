# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


MealType.destroy_all
Recipe.destroy_all

breakfast = MealType.create(name: "Breakfast")
morning_snack = MealType.create(name: "Morning Snack")
lunch = MealType.create(name: "Lunch")
afternoon_snack = MealType.create(name: "Afternoon Snack")
dinner = MealType.create(name: "Dinner")
midnight_snack = MealType.create(name: "Midnight Snack")


Recipe.create(name: "Pancakes", image_url: "https://lilluna.com/wp-content/uploads/2017/12/buttermilk-pancakes-resize-10-520x520.jpg", description: "Easy pancake recipe from lilluna.com", ingredients: "1 1/2 cups flour; 3 1/2 tsp baking powder; 1 tsp salt; 1 tbsp white sugar; 1 1/2 cups milk; 1 egg; 3 tbsp butter melted; 1 tsp vanilla", instructions: "1. In a large bowl, sift together the dry ingredients: Flour, baking powder, salt and sugar.; 2. Make a well in the center of the dry ingredients. Pour in the milk, egg and melted butter. Mix until smooth.; 3. Lightly oil a griddle, or frying pan and heat to medium high heat.; 4. Use about 1/4 c batter to pour each pancake onto the griddle. Heat until browned on both sides. Serve hot.", meal_type_id: breakfast.id)
class AddMealTypeToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :meal_type, foreign_key: true
  end
end

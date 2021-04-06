class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :description, :ingredients, :instructions, :meal_type_id, :meal_type
end

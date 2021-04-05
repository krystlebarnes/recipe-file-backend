class RemoveMealTypeIdFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :meal_type_id, :integer
  end
end

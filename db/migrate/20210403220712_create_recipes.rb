class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.string :ingredients
      t.string :instructions
      t.integer :meal_type_id

      t.timestamps
    end
  end
end

class Api::V1::RecipesController < ApplicationController
    # before_action :find_recipe, only: [:update]

    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe), status: :accepted
        else
            render json: {errors: recipe.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: RecipeSerializer.new(recipe)
      end

    def update
        recipe = Recipe.find(params[:id])
        recipe.update(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe), status: :accepted
        else
            render json: {errors: recipe.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :image_url, :description, :ingredients, :instructions, :meal_type_id)
    end

    # def find_recipe
    #     @updated_recipe = Recipe.find(params[:id])
    # end

end

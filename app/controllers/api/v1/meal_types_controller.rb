class Api::V1::MealTypesController < ApplicationController

    def index
        meal_types = MealType.all
        render json: MealTypeSerializer.new(meal_types)
    end
end

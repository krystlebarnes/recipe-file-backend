class MealType < ApplicationRecord
    has_many :recipes, dependent: :destroy
end

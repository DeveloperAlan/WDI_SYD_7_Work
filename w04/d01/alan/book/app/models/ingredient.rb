class Ingredient < ActiveRecord::Base
  has_many :recipes_ingredients
  has many :recipes, through: :recipes_ingredients
end

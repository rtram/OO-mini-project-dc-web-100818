require_relative '../config/environment.rb'



user1 = User.new("Beth")
user2 = User.new("Robin")
user3 = User.new("Jenny")

recipe1 = Recipe.new("Rice Cake")
recipe2 = Recipe.new("Carrot Cake")
recipe3 = Recipe.new("Choco Cake")
recipe4 = Recipe.new("Vanilla Cake")

rice = Ingredient.new("Rice")
carrot = Ingredient.new("carrot")
chocolate = Ingredient.new("chocolate")
vanilla = Ingredient.new("vanilla")

r1 = RecipeCard.new(5, "10/1/18", user1, recipe1)
r2 = RecipeCard.new(4, "10/2/18", user2, recipe2)
r3 = RecipeCard.new(5, "10/5/18", user3, recipe3)
r4 = RecipeCard.new(4, "10/2/18", user1, recipe2)
r5 = RecipeCard.new(2, "10/9/18", user1, recipe3)
r6 = RecipeCard.new(3, "10/3/18", user1, recipe4)

RecipeIngredient.new(rice, recipe1)
RecipeIngredient.new(carrot, recipe2)
RecipeIngredient.new(chocolate, recipe3)
RecipeIngredient.new(vanilla, recipe4)

Allergen.new(user1, rice)
Allergen.new(user1, carrot)
Allergen.new(user2, carrot)
Allergen.new(user1, chocolate)


binding.pry

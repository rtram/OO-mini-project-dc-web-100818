require 'pry'

class User

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def recipes
    RecipeCard.all.select {|recipe_card_obj| recipe_card_obj.user == self}
  end

  def add_recipe_card(rating, date, recipe)
    RecipeCard.new(rating, date, self, recipe)
  end

  def top_three_recipes
    sorted_arr = self.recipes.sort_by {|recipe_obj| recipe_obj.rating}
    sorted_arr[-3..-1]
  end

  def most_recent_recipe
    sorted_arr = self.recipes.sort_by {|recipe_obj| recipe_obj.date}
    sorted_arr[-1]
  end

  def declare_allergen
    Allergen.new(self, ingredient)
  end

  def allergen
    Allergen.all.select {|allergen_obj| allergen_obj.user == self}
  end

  def safe_recipes
    arr = Recipe.all.collect do |recipe|
      recipe.allergens
    end.flatten
    arr.select {|obj| obj.user != self}
  end
end
#
# ### `User`
# Build the following methods on the User class

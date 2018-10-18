class Recipe

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.most_popular
    user_arr = RecipeCard.all.collect {|obj| obj.recipe}
    freq = user_arr.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
    user_arr.max_by {|v| freq[v]}
  end

  def users
    RecipeCard.all.select {|recipe_obj| recipe_obj.recipe == self}
  end

  def ingredients
    RecipeIngredient.all.select {|obj| obj.recipe == self}
  end

  def allergens
    self.ingredients.collect {|obj| obj.ingredient.allergen?}
  end

  def add_ingredients(ingredients)
    ingredients.each do |element|
      RecipeIngredient.new(element, self)
    end
  end

end

class RecipeCard

  @@all = []

  attr_accessor :rating, :date, :user, :recipe

  def self.all
    @@all
  end

  def initialize(rating, date, user, recipe)
    @rating = rating
    @date = date
    @user = user
    @recipe = recipe
    self.class.all << self
  end
end

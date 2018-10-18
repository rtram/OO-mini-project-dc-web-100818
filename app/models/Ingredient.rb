class Ingredient

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def allergen?
    Allergen.all.select {|obj| obj.ingredient == self}
  end

  def self.most_common_allergen
    allergen_arr = Allergen.all.collect {|obj| obj.ingredient}
    freq = allergen_arr.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
    allergen_arr.max_by {|v| freq[v]}
  end
end

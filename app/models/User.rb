class User
    # User readers instead of explicit methods
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @@all << self
  
      @name = name
    end
  

    def self.all
      @@all
    end
  
    def recipes
      Recipe.all.select {|recipes| recipes.user == self}
    end
  
    def add_recipe_card(recipe, date, rating)
        recipe= RecipeCard.new(recipe, date, rating, self)
    end
  
    def declare_allergy(ingredient)
      new_allergy = Allergy.new(ingredient, self)
    end
  
    def allergens
      Allergy.all.select {|allergies| allergies.user == self}
    end
  
    def top_three_recipes
      self.recipes.sort_by {|info| info.rating}.pop(3)
    end
  
    def most_recent_recipe
      self.recipes.last
    end
  
  end
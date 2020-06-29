class User
    # User.all should return all of the user instances
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # User#recipes should return all of the recipes this user has recipe cards for
    def recipes
        Recipe.all.select {|recipes| recipes.user == self}
    end
    # User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, date, rating)
        recipe = RecipeCard.new(recipe, date, rating, self)
    end
    # User#declare_allergy should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
    def declare_allergy(ingredient)
        new_allergy = Allergy.new(ingredient, self)
    end
    # User#allergens should return all of the ingredients this user is allergic to
    def allergens
        Allergy.all.select{|allergies| allergies.user == self}
    end
    # User#top_three_recipes should return the top three highest rated recipes for this user.
    def top_three_recipes
        self.recipes.sort_by {|info| info.rating}.pop(3)
    end
    # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
        self.recipes.last
    end
end
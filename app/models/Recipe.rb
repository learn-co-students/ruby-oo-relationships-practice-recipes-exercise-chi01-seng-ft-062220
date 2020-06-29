class Recipe
    attr_accessor :name, :ingredients, :user
    @@all = []
    
    # Recipe#ingredients should return all of the ingredients in this recipe
    def initialize(name)
        @name = name
        @ingredients = ingredients
        @@all << self
    end
    # Recipe.all should return all of the recipe instances
    def self.all
        @@all
    end
    # Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    def self.most_popular
        self.all.max do |card|
            RecipeCard.all.collect do |info|
            info.recipe == self
            end.count
        end
    end
    # Recipe#users should return the user instances who have recipe cards with this recipe
    def users
        User.all.select{|users| users.recipes == self}
    end
    # Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
    def allergens
        Allergy.all.select {|info| info.name}
    end
    # Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    def add_ingredients(ingredients)
        ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
    end
end

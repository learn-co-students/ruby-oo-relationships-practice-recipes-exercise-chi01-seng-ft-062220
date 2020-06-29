class RecipeIngredient
    # RecipeIngredient is the join between an ingredient and a recipe. This is a has-many-through relationship Build the following methods on the RecipeIngredient class

    # RecipeIngredient.all should return all of the RecipeIngredient instances
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
   
    # RecipeIngredient#ingredient should return the ingredient instance
    def ingredient
        Recipe.all.find do |info|
            info.ingredients
        end
    end
    # RecipeIngredient#recipe should return the recipe instance
    def recipe
        Recipe.all.select {|info| info.ingredients == self}
    end
end

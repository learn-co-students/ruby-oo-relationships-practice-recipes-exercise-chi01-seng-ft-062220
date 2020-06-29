class RecipeCard
    # A RecipeCard is the join between a user instance and a recipe instance. This is a has-many-through relationship. Build the following methods on the RecipeCard class:
    attr_accessor :recipe, :rating, :date, :user
    @@all = []
    
    # RecipeCard.all should return all of the RecipeCard instances
    # RecipeCard#date should return the date of the entry
    # RecipeCard#rating should return the rating (an integer) a user has given their entry
    # RecipeCard#user should return the user to which the entry belongs
    # RecipeCard#recipe should return the recipe to which the entry belongs
    def initialize(recipe, date, rating, user)
        @recipe = recipe
        @rating = rating
        @date = date
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
end
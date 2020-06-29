class RecipeCard

    attr_accessor :date, :rating, :user, :recipe

    @@all = [ ]

    def initialize(recipe, user, date, rating)
        @recipe = recipe
        @user = user
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
end
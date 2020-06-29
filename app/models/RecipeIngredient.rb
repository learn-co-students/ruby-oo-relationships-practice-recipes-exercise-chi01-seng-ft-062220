class RecipeIngredient

    attr_accessor :name, :user

    @@all = []

    def initialize(name, user)
        @name = name
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredient 
        Recipe.all.find do |info|
            info.ingredients
        end
    end

    def Recipe
        Recipe.all.select {|info| info.ingredients == self}
    end

end
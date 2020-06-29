class Ingredient
     # Build the following methods on the Ingredient class

    # Ingredient.all should return all of the ingredient instances
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    # Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
    def self.most_common_allergen
        self.all.max_by do |allergies| 
            allergies.name == self
        end
    end
end
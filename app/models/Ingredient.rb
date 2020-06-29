class Ingredient
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @@all << self
      @name = name
    end
  
    def self.all
      @@all
    end

    def self.most_common_allergen
     self.all.max_by do |allergies|
        allergies.name == self
     end
    end
end

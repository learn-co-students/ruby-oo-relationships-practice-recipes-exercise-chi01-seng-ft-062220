class Recipe
    # User readers instead of explicit methods
    attr_accessor :name, :ingredients, :user
  
    @@all = []
  
    def initialize(name)
      @@all << self
      @name = name
      @ingredients =ingredients
    end
  
    def self.all
      @@all
    end
  
    def self.most_popular
        self.all.max do |recipe|
          RecipeCard.all.select do |card|
            card.recipe == recipe
          end.count
        end
      end
   
    def users
      RecipeCard.all.select { |rc| rc.recipe == self }.map { |rc| rc.user }
    end
  
    def ingredients
      RecipeIngredient.all.select { |rec_ing| rec_ing.recipe == self }.map { |recipe| recipe.ingredient }
    end
  

    def allergy 
      ingredients.select do |ingredient|
        Allergy.all.map { |allergen| allergen.ingredient }.uniq.include?(ingredient)
      end
    end
  
    def add_ingredients(ingredients)
      ingredients.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end
  end
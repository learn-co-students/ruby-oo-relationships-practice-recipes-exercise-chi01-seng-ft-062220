class Allergy
  
    attr_accessor :user, :ingredient
  
    @@all = []
  
    def initialize(name, user)
      @@all << self
      @name = name
      @user = user
    end
  
    def self.all
      @@all
    end
  end
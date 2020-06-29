require_relative '../config/environment.rb'

Recipe1 = RecipeCard.new("Sourdough", "Emily", "June 29th 2020", "4/5 stars")
Recipe2 = RecipeCard.new("Choco_Cookies", "Tenaysia", "March 11 2020", "5/5 stars")

flour = Ingredient.new('Flour')
egg = Ingredient.new('Egg')
milk = Ingredient.new('Milk')
choco_chip = Ingredient.new('Choco_Chip')
yeast = Ingredient.new('Yeast')
butter = Ingredient.new('Butter')
sugar = Ingredient.new('Sugar')
oil = Ingredient.new('Oil')

emily = User.new('Emily')
tenaysia = User.new('Tenaysia')
lady = User.new('Lady')
pepper = User.new('Pepper')
bobby = User.new('Bobby')

sourdough = Recipe.new('Sourdough')
sourdough.add_ingredients([flour, yeast])

choco_chip_cookie = Recipe.new('Choco_Chip_Cookie')
choco_chip_cookie.add_ingredients([choco_chip, flour, butter, sugar])

pancake = Recipe.new('Pancake')
pancake.add_ingredients([flour, butter, egg])

tenaysia.add_recipe_card(choco_chip_cookie, '2020-03-11', 100)
emily.add_recipe_card(sourdough, '2020-05-12', 80)
lady.add_recipe_card(choco_chip_cookie, '2020-03-11', 100)
bobby.add_recipe_card(choco_chip_cookie, '2020-03-11', 100)

tenaysia.declare_allergy(flour)

emily.declare_allergy(yeast)

binding.pry

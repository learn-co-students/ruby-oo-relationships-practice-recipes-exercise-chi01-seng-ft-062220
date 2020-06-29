require_relative '../config/environment.rb'

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
choco_chip_cookie = Recipe.new('Choco_Chip_Cookie')
pancake = Recipe.new('Pancake')

tenaysia.add_recipe_card(choco_chip_cookie, '2020-03-11', 100)
emily.add_recipe_card(sourdough, '2020-05-12', 99)
lady.add_recipe_card(pancake, '1990-03-20', 95)
bobby.add_recipe_card(pancake, '1991-04-15', 96)

tenaysia.declare_allergy(flour)
emily.declare_allergy(yeast)

sourdough.add_ingredients([flour, yeast])
choco_chip_cookie.add_ingredients([choco_chip, flour, butter, sugar])

binding.pry


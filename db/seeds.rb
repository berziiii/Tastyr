# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dietchoices = Dietchoice.create([{name: "Paleo"}, {name: "Pescetarian"}, {name: "Vegetarian"}, {name: "Lacto Vegetarian"}, {name: "Ovo Vegetarian"}, {name: "Vegan"}])
allergychoices = Allergychoice.create([{name: "Sesame"}, {name: "Tree Nut"}, {name: "Seafood"}, {name: "Peanut"}, {name: "Soy"}, {name: "Egg"}, {name: "Wheat"}, {name: "Gluten"}, {name: "Dairy"}, {name: "Dairy"}, {name: "Sulfite"}])
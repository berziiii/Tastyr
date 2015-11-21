# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dietchoices = Dietchoice.create([{name: "Paleo"}, {name: "Pescetarian"}, {name: "Vegetarian"}, {name: "Lacto Vegetarian"}, {name: "Ovo Vegetarian"}, {name: "Vegan"}])
allergychoices = Allergychoice.create([{name: "Sesame", search_value: "&allowedAllergy[]=399^Sesame-Free"}, {name: "Tree Nut", search_value: "&allowedAllergy[]=395^Tree Nut-Free"}, {name: "Seafood", search_value: "&allowedAllergy[]=398^Seafood-Free"}, {name: "Peanut", search_value: "&allowedAllergy[]=394^Peanut-Free"}, {name: "Soy", search_value: "&allowedAllergy[]=400^Soy-Free"}, {name: "Egg", search_value: "&allowedAllergy[]=397^Egg-Free"}, {name: "Wheat", search_value: "&allowedAllergy[]=392^Wheat-Free"}, {name: "Gluten", search_value: "&allowedAllergy[]=393^Gluten-Free"}, {name: "Dairy", search_value: "&allowedAllergy[]=396^Dairy-Free"}, {name: "Sulfite", search_value: "&allowedAllergy[]=401^Sulfite-Free"}])
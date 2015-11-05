class PagesController < ApplicationController


  def home
  end

  def search_form
  	render :search
  end

	def search

			require 'json'
			require 'rest_client'

		  query = params[:q].to_s

			data = RestClient.get('http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q='+query)

			@recipes = JSON.parse(data)['recipes']

	end


  # 	@query = params[:q]

  # 	@data = RestClient.get('http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q='+@query)

		# @recipes = JSON.parse(@data)['recipes']

	# 	def findRecipe

	# 		recipe_ID = recipe['recipe_id']

	# 		recipe_url = 'http://food2fork.com/api/get?key=76a1bb1a21eb14d6f5569039fa0e1fe8&rId='+recipe_ID

	# 		recipe_data = JSON.parse(RestClient.get(recipe_url))

	# 		recipeTitle = recipe['title']

	# 		recipeIngredients = recipe_data['recipe']['ingredients']

	# 		recipeSource = recipe_data['recipe']["source_url"]

	# 		puts "~~~~~~~~~~~~~~~~~~"
	# 		puts ''
	# 		puts recipeTitle + ":"
	# 		puts ''
	# 		puts "Source Site: " + recipeSource
	# 		puts ''
	# 		puts "Ingredients:"
	# 		puts ''
	# 		puts recipeIngredients
	# 		puts "~~~~~~~~~~~~~~~~~~"

	# 	end

	# 	def newRecipe

	# 		puts "New Recipe? (y)es or (n)o?"

	# 		searchAgain = gets.chomp.to_s

	# 		if searchAgain.downcase == "y"
	# 			findRecipe
	# 			newRecipe
	# 		end

	# end

  def about
  end

end

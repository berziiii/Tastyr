class DashboardController < ApplicationController

	# SEARCH_TYPES = {
 #    :searchGO => "GO",
 #    :searchNEW => "NEW RECIPE"
 #  }

 	def new

 		@profile = current_user.profile
  	@allergychoices = @profile.allergychoices
  	@dietchoices = @profile.dietchoices
  	@allergy_search = @allergychoices.map{ |choice| choice.search_value }.reduce(:+)

  	if params[:q]

  		require 'json'
			require 'rest_client'
			require 'uri'

	  	@form_id = params[:form_id].to_i

	  	@search= params[:q]

			@query = URI.encode("#{@search}").to_s

			# @query = params[:q].gsub(/ /, "%20").to_s

			@data = RestClient.get("http://api.yummly.com/v1/api/recipes?_app_id="+ENV["YUMMLY_API_ID"]+"&_app_key="+ENV["YUMMLY_API_KEY"]+"&q=#{@query}#{@allergy_search}")

			@recipes = JSON.parse(@data)['matches']

			@recipe = @recipes.sample

			@recipe_name = @recipe['recipeName']

			@ingredients = @recipe['ingredients']

			@recipe_data = JSON.parse(RestClient.get("http://api.yummly.com/v1/api/recipe/#{@recipe['id']}?_app_id="+ENV["YUMMLY_API_ID"]+"&_app_key="+ENV["YUMMLY_API_KEY"]))

			@recipe_link = @recipe_data['source']['sourceRecipeUrl'].to_s

			@recipe_image = @recipe_data['images']

			@recipe_image_url = @recipe_image.first['hostedLargeUrl']

			@ingredients = @recipe_data['ingredientLines']

			session[params[:form_id]] = [ @recipe_name.gsub('&amp;', '&'), @recipe_image_url, @recipe_link, @ingredients, @query]

		end

	end

end

			# food2fork #
		 #  query = params[:q].to_s

		 #  diet = params[:d].to_s

			# data = RestClient.get('http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q='+diet+query)

			# @recipes = JSON.parse(data)['recipes']

			# @recipe = @recipes.sample

			# @recipe_name = @recipe["title"]

			# @recipe_image_url = @recipe["image_url"]

			# @recipe_link = @recipe["source_url"]

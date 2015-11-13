class DashboardController < ApplicationController

  def index

  	@profile = current_user.profile
  	@allergychoices = @profile.allergychoices
  	@dietchoices = @profile.dietchoices

  end

  def dashboard_search_form

  	render :dashboard

  end

 	def dashboard

 		@profile = current_user.profile
  	@allergychoices = @profile.allergychoices
  	@dietchoices = @profile.dietchoices

 		# params[:form_id] == @form_id && params[:q] == query
		#if params[:form_id] == @form_id && params[:q] == query

  	@form_id = params[:form_id].to_i

 		require 'json'
		require 'rest_client'

		query = params[:q].to_s

		data = RestClient.get('http://api.yummly.com/v1/api/recipes?_app_id=02f876df&_app_key=6f8baa95c50b334480008f619846c04d&q='+query)

		$recipes = JSON.parse(data)['matches']

		@recipe = $recipes.sample

		@recipe_ID = @recipe['id']

		@recipe_name = @recipe['recipeName']

		@ingredients = @recipe['ingredients']

		@recipe_data = JSON.parse(RestClient.get('http://api.yummly.com/v1/api/recipe/'+@recipe_ID+'?_app_id=02f876df&_app_key=6f8baa95c50b334480008f619846c04d'))

		@recipe_link = @recipe_data['source']['sourceRecipeUrl'].to_s

		@recipe_image = @recipe_data['images']

		@recipe_image_url = @recipe_image.first['hostedLargeUrl']

		@ingredients = @recipe_data['ingredientLines']

			# food2fork #
		 #  query = params[:q].to_s

		 #  diet = params[:d].to_s

			# data = RestClient.get('http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q='+diet+query)

			# @recipes = JSON.parse(data)['recipes']

			# @recipe = @recipes.sample

			# @recipe_name = @recipe["title"]

			# @recipe_image_url = @recipe["image_url"]

			# @recipe_link = @recipe["source_url"]

		session[params[:form_id]] = [ @recipe_name, @recipe_image_url, @recipe_link, @ingredients]

	end


	 # 	@profile = current_user.profile
  # 	@allergychoices = @profile.allergychoices
  # 	@dietchoices = @profile.dietchoices

  # 	@form_id = params[:form_id].to_i

 	# 	require 'json'
		# require 'rest_client'

		# @recipe = $recipes.sample

		# @recipe_ID = @recipe['id']

		# @recipe_name = @recipe['recipeName']

		# @ingredients = @recipe['ingredients']

		# @recipe_data = JSON.parse(RestClient.get('http://api.yummly.com/v1/api/recipe/'+@recipe_ID+'?_app_id=02f876df&_app_key=6f8baa95c50b334480008f619846c04d'))

		# @recipe_link = @recipe_data['source']['sourceRecipeUrl'].to_s

		# @recipe_image = @recipe_data['images']

		# @recipe_image_url = @recipe_image.first['hostedLargeUrl']

		# @ingredients = @recipe_data['ingredientLines']

		# session[params[:form_id]] = [ @recipe_name, @recipe_image_url, @recipe_link, @ingredients ]

 	# def newRecipe

 	# 	@profile = current_user.profile
  # 	@allergychoices = @profile.allergychoices
  # 	@dietchoices = @profile.dietchoices

  # 	@form_id = params[:form_id].to_i

 	# 	require 'json'
		# require 'rest_client'

		# @recipe = $recipes.sample

		# @recipe_ID = @recipe['id']

		# @recipe_name = @recipe['recipeName']

		# @ingredients = @recipe['ingredients']

		# @recipe_data = JSON.parse(RestClient.get('http://api.yummly.com/v1/api/recipe/'+@recipe_ID+'?_app_id=02f876df&_app_key=6f8baa95c50b334480008f619846c04d'))

		# @recipe_link = @recipe_data['source']['sourceRecipeUrl'].to_s

		# @recipe_image = @recipe_data['images']

		# @recipe_image_url = @recipe_image.first['hostedLargeUrl']

		# @ingredients = @recipe_data['ingredientLines']

		# session[params[:form_id]] = [ @recipe_name, @recipe_image_url, @recipe_link, @ingredients ]


 	# end

end

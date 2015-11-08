class DashboardController < ApplicationController

  def index

  	@profile = current_user.profile
  	@allergychoices = @profile.allergychoices

  end

  def dashboard_search_form

  	render :dashboard

  end

 	def dashboard

 		@profile = current_user.profile
  	@allergychoices = @profile.allergychoices

  	@form_id = params[:form_id].to_i

 		require 'json'
		require 'rest_client'

	  query = params[:q].to_s

		data = RestClient.get('http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q='+query)

		@recipes = JSON.parse(data)['recipes']

		@recipe = @recipes.sample

		@recipe_name = @recipe["title"]

		@recipe_image_url = @recipe["image_url"]

		@recipe_link = @recipe["source_url"]

		session[params[:form_id]] = [ @recipe_name, @recipe_image_url, @recipe_link ]

 	end

end

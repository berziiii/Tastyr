class SearchController < ApplicationController

  def new

  	if params[:q]
			require 'json'
			require 'rest_client'

			@query = params[:q].gsub(/ /, "%20").to_s

			@data = RestClient.get("http://food2fork.com/api/search?key="+ENV["FOOD2FORK_API_KEY"]+"&q=#{@query}")

			@recipes = JSON.parse(@data)['recipes']

  	end
  end
end
class SearchController < ApplicationController

  def new

  	if params[:q]
			require 'json'
			require 'rest_client'

			@query = params[:q].gsub(/ /, "%20").to_s

			RestClient.get("http://food2fork.com/api/search?key="+ENV["FOOD2FORK_API_KEY"]+"&q="@query"")

			# RestClient.get("http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q=#{@query}")

			@recipes = JSON.parse(data)['recipes']
  	end
  end
end
class SearchController < ApplicationController

  def new

  	if params[:q]
			require 'json'
			require 'rest_client'
			require 'uri'

			@search= params[:q]

			@query = URI.encode("#{@search}").to_s
			# .gsub(/ /, "%20").to_s

# 			@data = RestClient.get("http://food2fork.com/api/search?key="+ENV["FOOD2FORK_API_KEY"]+"&q=#{@query}")
# 76a1bb1a21eb14d6f5569039fa0e1fe8
			@data = RestClient.get("http://food2fork.com/api/search?key=76a1bb1a21eb14d6f5569039fa0e1fe8&q=#{@query}")
76a1bb1a21eb14d6f5569039fa0e1fe8
			@recipes = JSON.parse(@data)['recipes']

  	end
  end
end
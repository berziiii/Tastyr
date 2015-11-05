class DashboardController < ApplicationController
  def index
  	@profile = Profile.find(params[:user_id])
  end
end

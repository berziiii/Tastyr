class AllergiesController < ApplicationController

  def index
  end

  def show
  end

  def new

  	@allergychoices = Allergychoice.all
    @allergy = Allergy.new

  end

  def create

    @profile = current_user.profile
    @allergy = Allergy.new
    @allergy.allergychoice = Allergychoice.find(params[:allergychoice_id])

    if @allergy.save
      @profile.allergies << @allergy
      redirect_to '/dashboard'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  	@allergy = Allergy.find(params[:name])
  	if @allergy.update get_safe_params params
  		redirect_to profile_path
  	else
  		render 'new'
  	end
  end

private

	def get_safe_params params
		params.require(:allergy).permit(:profile_id)
	end

end

class AllergiesController < ApplicationController

  def index
    @allergies = Allergy.all
    @allergy = Allergy.find(params[:id])
    # do something with @allergies
  end

  def show
    # @allergy = Allergy.find(params[:id])
    # do something with @allergy
  end

  def new

    @profile = current_user.profile
  	@allergychoices = Allergychoice.all
    @allergy = Allergy.new

  end

  def create

    @profile = current_user.profile
    @allergy = Allergy.new
    @allergy.allergychoice = Allergychoice.find(params[:allergychoice_id])

    if @allergy.save
      @profile.allergies << @allergy
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def edit

    @profile = current_user.profile
    @allergychoices = Allergychoice.all
    @allergy = @profile.allergies.first # this is fucked up JRH

  end

  def update

    @profile = current_user.profile(params[:id])
  	@allergy = @profile.allergies

    if @profile.update
      redirect_to current_user.profile
    else
      render 'edit'
    end
  end

private

	def allergy_params
		params.require(:allergy).permit(:profile_id, :allergychoice_id)
	end

end

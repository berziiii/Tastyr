class AllergiesController < ApplicationController

  def index
    @allergies = Allergy.all
    @allergy = Allergy.find(params[:id])
    # do something with @allergies
  end

  def show
    @allergy = Allergy.find(params[:id])
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
      redirect_to current_user.profile
    else
      render 'new'
    end
  end

  def edit

    @profile = current_user.profile
    @allergychoices = Allergychoice.all

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

  def destroy

    @user = current_user
    @profile = current_user.profile
    @allergychoices = @profile.allergychoices
    @allergy = Allergy.where(params[:profile_id] == @profile, params[:allergychoice_id] == @allergychoices)

    Allergy.find(params[:id]).delete
    redirect_to current_user.profile

  end

private

	def allergy_params
		params.require(:allergy).permit(:profile_id, :allergychoice_id)
	end

end

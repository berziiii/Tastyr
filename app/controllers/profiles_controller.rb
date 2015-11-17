class ProfilesController < ApplicationController

	def index

  	@profile = current_user.profile
  	@allergychoices = Allergychoice.all
  	@allergy = Allergy.find(params[:id])

  end

	def new

		@profile = Profile.new

	end

	def show

		@user = current_user
 		@profile = current_user.profile
  	@allergychoices = @profile.allergychoices
  	@allergy = Allergy.where(params[:profile_id] == @profile.id)

	end

	def create
    @profile = Profile.new(get_safe_params(params))
    @profile.user = current_user

    if @profile.save
			redirect_to current_user.profile
		else
      render 'new'
    end

  end

	def edit

		@profile = current_user.profile

	end

	def update

		@profile = current_user.profile

		if @profile.update get_safe_params params
			redirect_to @profile
		else
			render 'edit'
		end

	end

private

	def get_safe_params params
		params.require(:profile).permit(:first_name, :last_name)
	end

end





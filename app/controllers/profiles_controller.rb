class ProfilesController < ApplicationController

	def index

  	@profile = current_user.profile
  	@allergychoices = @profile.allergychoices

  end

	def new

		@profile = Profile.new

	end

	# def edit
	# 	@profile = Profile.find(params[:id])
	# end

	def show
		@profile = Profile.find(params[:id])
	end

	def create
    @profile = Profile.new(get_safe_params(params))
    @profile.user = current_user

    if @profile.save
			redirect_to new_diet_path
		else
      render 'new'
    end
  end

 # 	def update
	# 	@profile = Profile.find(params[:id])
	# 	if @profile.update get_safe_params params
	# 		redirect_to @profile
	# 	else
	# 		render 'edit'
	# 	end
	# end

private

	def get_safe_params params
		params.require(:profile).permit(:first_name, :last_name)
	end

end





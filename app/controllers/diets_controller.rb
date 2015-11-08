class DietsController < ApplicationController
  def index

  	@profile = Profile.find(params[:id])
  	@diet = Diet.all

  end

  def show
  end

  def new
    @dietchoices = Dietchoice.all
    @diet = Diet.new
  end

  def create

    @profile = current_user.profile
    @diet = Diet.new
    @diet.dietchoice = Dietchoice.find(params[:dietchoice_id])

		if @diet.save
      @profile.diets << @diet
			redirect_to new_allergy_path
		else
			render 'new'
		end
  end

  def edit
  	@diet = Diet.all
  end

  def update
		@diet = Diet.find(params[:id])
		if @diet.update get_safe_params params
			redirect_to new_allergy_path
		else
			render 'new'
		end
	end

 private

	def get_safe_params params
		params.require(:profile).permit(:dietchoice_id)
	end

end



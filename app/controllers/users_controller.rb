class UsersController < ApplicationController

	def generate_new_password_email
		user = User.find(params[:user_id])
		user.send_reset_password_instructions
		flash[:notice] = "Reset password instructions have been sent to #{user.email}."
		redirect_to root
	end

end

class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		
		check_email
		return render 'error' unless errors.empty?
		@user.save
	end

	private
	def user_params
		params.require(:user).permit(:email)
	end

	def check_email
	 	errors.push("Please enter a valid email") unless valid_email?
	 end

	 def valid_email?
	 	return false unless @user.email =~ /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	 	true
	 end

	 def errors
	 	@errors ||= []
	 end
end

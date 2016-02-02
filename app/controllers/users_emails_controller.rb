class UsersEmailsController < ApplicationController
	def new
		@user_email = UserEmail.new
	end

	def create
		@user_email = UserEmail.create(user_email_params)
	end

	private
	def user_email_params
		params.require(:user_email).permit(:email)
	end
end

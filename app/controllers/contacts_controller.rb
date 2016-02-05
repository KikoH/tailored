class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		#Check if name has any errors
		check_name
		# Check if email has any errors
		check_email
		# Only return render error if there are errors
		return render 'error' unless errors.empty?
		# Call ContactMailer and send the params to the method
		ContactMailer.new_feedback(params[:name],params[:email], params[:message]).deliver
	 end

	 private
	 # Check if name has an error. pushes the error to the error array
	 def check_name
	 	errors.push('Name is not valid') unless valid_name?
	 end
	 #Check if the name is valid
	 def valid_name?
	 	#Return false if name is not a string or length less than 3
	 	return false unless params[:name].is_a?(String)
	 	return false unless params[:name].size > 3
	 	true
	 end

	 def check_email
	 	errors.push("Enter a valid email") unless valid_email?
	 end

	 def valid_email?
	 	return false unless params[:email] =~ /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	 	true
	 end
	 # errors array
	 def errors
	 	@errors ||= []
	 end
end




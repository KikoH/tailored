class ContactMailer < ActionMailer::Base
	#Create a method that assigns the params to instace variables
	def new_feedback(name, email, message)
		@name = name
		@email = email
		@message = message
		# Mail it to/from/subject
		mail(to: 'kiiko87@gmail.com', from: @email, subject: 'Feedback')
	end
end
class ContactMailer < ActionMailer::Base
	#Create a method that assigns the params to instace variables
	def new_feedback(name, email, hear, can_publish, held, message)
		@name = name
		@email = email
		@message = message
		@hear = hear
		@can_publish = can_publish
		@held = held
		# Mail it to/from/subject
		mail(to: 'kiiko87@gmail.com', from: @email, subject: 'Feedback')
	end
end
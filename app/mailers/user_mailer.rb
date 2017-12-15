class UserMailer < ActionMailer::Base

	def welcome(user)
	  @appname = "Valley"
	  mail(to: user.email,
	       subject: "Welcome to the #{@appname}!")
	end

end
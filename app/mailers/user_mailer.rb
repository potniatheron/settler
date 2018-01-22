class UserMailer < ApplicationMailer
  default from: "from@example.com"

	def welcome(user)
		@appname = "Settler"
		@user = user
		mail(to: @email, :subject => "Welcome to the #{@appname}!")
	end

	def weekly_email(user)
		@appname = "Settler"
		@user = user
		mail to: user.email, subject: "Your #{@appname} weekly update"
	end

end
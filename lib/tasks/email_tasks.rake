#desc 'send newsletter email'
#	task send_newsletter_email: :environment do
#	  UserMailer.weekly_mail(user).deliver!
#end
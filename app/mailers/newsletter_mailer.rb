class NewsletterMailer < ActionMailer::Base

	def post_email(user)
		@latest_post = Article.order(:id).last
		mail(to: newsletter.email,
	        subject: "New Story on Settler")
	end

end
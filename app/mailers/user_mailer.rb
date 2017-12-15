def welcome(user)
  @appname = "Valley"
  mail(to: user.email,
       subject: "Welcome to the #{@appname}!")
end

def post_email(user)
	@latest_post = Article.order(:id).last
	mail(to: => "#{user.name} <#{user.email}>", 
		 subject: "New Story on Settler")
end
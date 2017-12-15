class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def welcome(user)
    @appname = "Valley"
    @user = user
    mail(to: @email, :subject => "Welcome to the #{@appname}!")
  end

  def post_email(user)
    @latest_post = Article.order(:id).last
    @user = user
    mail(:to => @email, :subject => "New Story on Settler")
  end
end
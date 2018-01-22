class Newsletter < ActionMailer::Base
  default from: "francescarinaldi09@gmail.com"

  def newsletter_email(subscriber, newsletter)
    @newsletter = newsletter
    @subscriber = subscriber
    mail(to: subscriber.email, subject: newsletter.title)
  end
end

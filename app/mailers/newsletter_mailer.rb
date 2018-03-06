class NewsletterMailer < ActionMailer::Base
  default from: "francescarinaldi09@gmail.com"

  def send_to_subscriber(subscriber, newsletter)
    @newsletter = newsletter
    @subscriber = subscriber
    mail(to: subscriber.email, subject: newsletter.title)
  end
end

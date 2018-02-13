class NewsletterController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def show
  end

  def new
  end

  def send_to_subscribers
    @newsletter = Newsletter.find(params[:newsletter_id])

     Subscriber.all.each do |subscriber|
       NewsletterMailer.send_to_subscriber(subscriber, @newsletter).deliver_later
     end
  end
end

class NewsletterController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def send
    @newsletter = Newsletter.find(params[:id])

     Subscriber.all.each do |subscriber|
       Newsletter.newsletter_email(subscriber, @newsletter).deliver_later
     end
  end
end

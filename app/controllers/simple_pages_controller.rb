class SimplePagesController < ApplicationController
  def about
  end

  def contact
  end

  def landing_page
  @products = Product.limit(5)
	end

	def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  ActionMailer::Base.mail(from: @email,
	      to: 'michael.flaherty01@gmail.com',
	      subject: "A new contact form message from #{@name***REMOVED***",
	      body: @message).deliver_now
	end
end



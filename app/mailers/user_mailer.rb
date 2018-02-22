class UserMailer < ApplicationMailer
  default from: "donotreply@rubyonrailsproductionapp.herokuapp.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'michael.flaherty01@gmail.com',
         subject: "A new contact form message from #{name***REMOVED***")
  end	
end

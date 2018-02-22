class UserMailer < ApplicationMailer
  default from: "donotreply@rubyonrailsproductionapp.herokuapp.com"


def contact_form(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
mail(:to => 'michael.flaherty01@gmail.com', :subject => "New Message!")
  end	
end
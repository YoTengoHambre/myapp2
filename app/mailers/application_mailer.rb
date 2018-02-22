class ApplicationMailer < ActionMailer::Base
  default from: 'donotreply@rubyonrailsproductionapp.herokuapp.com'
  layout 'mailer'
end
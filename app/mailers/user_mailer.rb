class UserMailer < ActionMailer::Base
  default :from => "wannaknowco.gmail.com"
  
  def welcome_email(user)
    mail(:to => user.email, :subject => "Invitation Request Received")
  end
end
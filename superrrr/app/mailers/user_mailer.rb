class UserMailer < ActionMailer::Base
  default :from => "connecttheory@gmail.com"
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
  
  def password_reset(user)
  	@user = user
    mail(:to => user.email, :subject => "Password Reset")
  end
end

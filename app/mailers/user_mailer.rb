class UserMailer < ApplicationMailer
  default from: 'npfavor.system@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: "welcome!")
  end
end

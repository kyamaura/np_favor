class UserMailer < ApplicationMailer
  default from: 'npfavor.system@gmail.com'

  def welcome_email()
    @user = "山浦"
    @url  = 'http://localhost:3000/login'
    mail(
      to: "kyamaura@netprotections.co.jp",
      subject: "welcome!",&:text)
  end

  def task_received(requester_user_id, assistant_user_id )
    @requester = User.find_by(id: requester_user_id)
    @assistant = User.find_by(id: assistant_user_id)
    @url  = 'http://localhost:3000/login'
    mail(
      to: @requester.email ,
      subject: "NP FAVORでの頼みごとが受託されました！！！",&:text)
  end

end

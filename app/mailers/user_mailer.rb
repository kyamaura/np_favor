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
    @url  = 'https://npfavor.herokuapp.com/'
    mail(
      to: @requester.email ,
      subject: "NP FAVORでの頼みごとが受託されました！",&:text)
  end

  def received_notification(requester_user_id, assistant_user_id )
    @requester = User.find_by(id: requester_user_id)
    @assistant = User.find_by(id: assistant_user_id)
    @url  = 'https://npfavor.herokuapp.com/'
    mail(
      to: @assistant.email ,
      subject: "#{@requester.name}さんの頼みごとを受託しました！",&:text)
  end

  def task_canceled(requester_user_id, assistant_user_id )
    @requester = User.find_by(id: requester_user_id)
    @assistant = User.find_by(id: assistant_user_id)
    @url  = 'https://npfavor.herokuapp.com/'
    mail(
      to: @requester.email ,
      subject: "#{@assistant.name}が受託した頼みごとがキャンセルされました！",&:text)
  end

  def canceled_notification(requester_user_id, assistant_user_id )
    @requester = User.find_by(id: requester_user_id)
    @assistant = User.find_by(id: assistant_user_id)
    @url  = 'https://npfavor.herokuapp.com/'
    mail(
      to: @assistant.email ,
      subject: "受託した頼みごとをキャンセルしました！",&:text)
  end

  def deadline_passed(requester_user_id )
    @requester = User.find_by(id: requester_user_id)
    @url  = 'https://npfavor.herokuapp.com/'
    mail(
      to: @requester.email ,
      subject: "NP FAVORでの頼みごとは受託されませんでした！",&:text)
  end

end

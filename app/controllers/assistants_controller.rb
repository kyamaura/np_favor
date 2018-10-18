class AssistantsController < ApplicationController
  # before_actionに「:authenticate_user」を追加してください
  before_action :authenticate_user

  # createアクションを追加してください
  def create
    Assistant.transaction do
    @assistant = Assistant.new(user_id: @current_user.id, task_id: params[:task_id])
    @assistant.save!
    @task = Task.find_by(id: params[:task_id])
    @task.status = 10
    @task.save!
    UserMailer.task_received(@task.user_id, @assistant.user_id ).deliver_now
    UserMailer.received_notification(@task.user_id, @assistant.user_id ).deliver_now
    end
    flash[:notice] = "頼みごとを引き受けました"
    redirect_to("/tasks/index")
    rescue => e
    flash[:notice] = "受託に失敗しました"
    render("/tasks/#{params[:task_id]}")

  end

  def destroy
    Assistant.transaction do
    @task = Task.find_by(id: params[:task_id])
    @task.status = 0
    @task.save!
    @assistant = Assistant.find_by(user_id: @current_user.id, task_id: params[:task_id])
    UserMailer.task_canceled(@task.user_id, @assistant.user_id ).deliver_now
    UserMailer.canceled_notification(@task.user_id, @assistant.user_id ).deliver_now
    @assistant.destroy!

    end
    flash[:notice] = "受託をキャンセルしました"
    redirect_to("/tasks/index")
    rescue => e
    flash[:notice] = "受託のキャンセルに失敗しました"
    render("/tasks/#{params[:task_id]}")
  end

end

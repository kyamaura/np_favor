class TasksController < ApplicationController
before_action :authenticate_user
before_action :ensure_correct_user, {only:[:edit, :update, :destroy]}

  def index
    @tasks = Task.all.where(status: 00).order(created_at: :desc)
  end

  def show
    @task = Task.find_by(id: params[:id])
    @user = @task.user
    @assistant = Assistant.find_by(task_id: @task.id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      title: params[:title] ,
      compensation: params[:compensation],
      reception_deadline: params[:reception_deadline],
      content: params[:content],
      user_id: @current_user.id,
      status: 00
    )
    if @task.save
      flash[:notice] = "お願いしました"
      redirect_to("/tasks/up")
    else
      render("tasks/new")
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.status = 31
    @task.save
    @task.destroy
    flash[:notice] = "頼みごとを削除しました"
    redirect_to("/tasks/index")
  end

  def ensure_correct_user
    @task = Task.find_by(id: params[:id])

    if @task.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/tasks/index")
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.title = params[:title]
    @task.compensation = params[:compensation]
    @task.reception_deadline = params[:reception_deadline]
    @task.content = params[:content]
    if @task.save
      flash[:notice] = "頼みごとを編集しました"
      redirect_to("/tasks/index")
    else
      render("tasks/edit")
    end
  end

end

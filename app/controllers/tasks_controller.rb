class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(created_at: :desc)
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      title: params[:title] ,
      compensation: params[:compensation],
      reception_deadline: params[:reception_deadline],
      content: params[:content]
    )
    if @task.save
      flash[:notice] = "お願いしました"
      redirect_to("/tasks/up")
    else
      render("tasks/new")
    end
  end


end

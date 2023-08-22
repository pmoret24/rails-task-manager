class TasksController < ApplicationController

  def index
    @lists = Task.all
  end

  def show
    @details = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

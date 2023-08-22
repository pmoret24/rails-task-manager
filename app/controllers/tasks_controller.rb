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

    redirect_to task_path(@task)
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

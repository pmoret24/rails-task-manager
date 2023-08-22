class TasksController < ApplicationController

  def index
    @lists = Task.all
  end
  def show
    @details = Task.find(params[:id])
  end
end

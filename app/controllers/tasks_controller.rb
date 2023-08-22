class TasksController < ApplicationController

  def list
    @lists = Task.all
  end
end

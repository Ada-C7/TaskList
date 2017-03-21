class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @this_task = Task.find(params[:id])
  end
end

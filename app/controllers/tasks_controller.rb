class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @this_task = Task.find(params[:id])
  end

  def new
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.desc = params[:desc]

    if task.save
      redirect_to tasks_path
    end
  end

end

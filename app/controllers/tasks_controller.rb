class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @result_task = Task.find(params[:id])
  end

  def new
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.description = params[:description]
    task.completion_date = params[:completion_date]
    task.completed = params[:completed]
      if task.save
        redirect_to tasks_path
      end
  end
end

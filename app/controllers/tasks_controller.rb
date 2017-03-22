class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
      @task = Task.find(params[:id])
  end

  def new
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.description = params[:description]
    # task.date

    if task.save
        redirect_to tasks_path
    end
  end

end

class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @result_task = Task.find(params[:id])
  end


  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.name = task_params[:name]
    task.description = task_params[:description]
    task.completion_date = task_params[:completion_date]
    task.completed = task_params[:completed]

    if task.save
      redirect_to task_path
    end
  end


  def create
    task = Task.create task_params
    unless task.id == nil
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  private

  #strong param
  def task_params
    params.require(:task).permit(:name, :description, :completion_date, :completed)
  end

  # def create
  #   task = Task.new
  #   task.name = params[:name]
  #   task.description = params[:description]
  #   task.completion_date = params[:completion_date]
  #
  #   if task.save #retuns either true or false
  #     redirect_to tasks_path
  #   end
  # end

end

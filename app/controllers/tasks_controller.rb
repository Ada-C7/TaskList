class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    puts ">>>> NK: In Tasks controller #create method"
    puts params[:task].to_hash

    Task.create(task_params)
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to(tasks_path, :notice => 'Task is not found') unless @task
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update_attributes(task_params)
    task.save

    redirect_to task_path(task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @task = Task.find(params[:id])
    @task.update({:completed_at=>Time.now})
    
    redirect_to tasks_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at, :location)
  end

end

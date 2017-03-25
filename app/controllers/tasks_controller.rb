class TasksController < ApplicationController

  def index
    @tasks = Task.all

  end


  def new
    @task = Task.new
  end

  def update
    puts ">>> TG: : InTasksController#update"
    task = Task.find(params[:id])
    task.update_attributes(task_params)
    task.save
    redirect_to task_path
  end

  def edit
  id = params[:id].to_i
  @task = Task.find(id)
  end

  def create
    puts ">>> TG: : InTasksController#create"
    puts params[:task].to_hash

    Task.create(task_params)
    redirect_to tasks_path
  end


  def show
    id = params[:id].to_i
    @task = Task.find(id) or raise not_found
    rescue ActiveRecord::RecordNotFound
    flash[:notice] = "Wrong post it"
    redirect_to :action => 'index'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  def complete
    # @task
    task = Task.find(params[:id])
    task.update_attribute(:completed,params[:completed])
    task.save
    redirect_to task_path
  end


  private
  def task_params
    return params.require(:task).permit(:name, :deadline, :completed)
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @selected_task = Task.find params[:id]
  end


  def new
    @task = Task.new
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]

    task.name = task_params[:name]
    task.description = task_params[:description]
    task.priority = task_params[:priority]
    task.due_date = task_params[:due_date]
    if task_params[:done] == "1"
      task.done = true
    elsif task_params[:done] == "0"
      task.done = false
    end

    if task.save
      redirect_to task_path(task.id)
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

  def task_done
    task = Task.find params[:id]
    task.done = true
    task.complete_date = Time.new

    if task.save
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :priority, :due_date, :done)
  end

end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @show_task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.name = task_params[:name]
    task.description = task_params[:description]
    task.status = task_params[:status]

    if task.status == "complete"
      complete(params[:id])
    end

    if task.save
      redirect_to task_path(task.id)
    end
  end

  def new
    @task = Task.new
  end

  def create # how can I make this so it is requires to have a name??
    task = Task.create task_params

    unless task.name == nil
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to root_path
  end

  def complete(id)
    Date::DATE_FORMATS[:default] = "%B %e, %Y"

    task = Task.find(id)
    task.completion_date = DateTime.now.to_date
    task.save
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :completion_date, :status)
  end
end

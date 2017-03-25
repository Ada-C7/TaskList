class TasksController < ApplicationController
  def index
    @tasks = Task.all.reorder('completed_at')
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params) # create new book and add to database

    redirect_to tasks_path # return to books page
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
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
    Task.find(params[:id]).destroy

    redirect_to tasks_path
  end

  def complete
    Task.find(params[:id]).reverse_complete

    redirect_to tasks_path
  end

  private

  def task_params # strong params, prevent bad user input, only permit a task and a name and description to describe that task
    return params.require(:task).permit(:name, :description)
  end
end

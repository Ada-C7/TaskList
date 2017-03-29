class TasksController < ApplicationController

  def new
  # access to new task instance by view
    @task = Task.new
  end

  def index
    puts '>>>TT: from TasksController#index'
    # access to all task instances by index view
    @tasks = Task.all
  end

  def create
    puts '>>>TT: In TasksController#create'
    Task.create(task_data)

    redirect_to tasks_path
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
    task.update_attributes(task_data)
    task.save

    redirect_to task_path(task)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    task.update_attributes(:completion_date => Date.today)
    task.save

    redirect_to tasks_path
  end

  private
  def task_data
    return params.require(:task).permit(:name, :description, :completion_date)
  end

end

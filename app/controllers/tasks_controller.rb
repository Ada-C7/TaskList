class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show

    @result_task = Task.find(params[:id])
  end

  def create
    task = Task.new
    task.title = params[:task][:title]
    task.description = params[:task][:description]
    task.completion = "Not Yet Completed"
    if task.save
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completion)
  end


end

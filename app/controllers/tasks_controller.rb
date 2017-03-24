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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.title = params[:task][:title]
    task.description = params[:task][:description]
    task.completion = params[:task][:completion]

    if task.save
      redirect_to tasks_id_url
    end
  end

  def complete
    task = Task.find(params[:id])
    task.completion = "Completed at #{Date.today}"
    if task.save
      redirect_to tasks_id_url
    end
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

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completion)
  end


end

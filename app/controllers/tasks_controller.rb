class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end


  def new
  end

  def create
    puts ">>>JCL: In BooksController#create"
    puts params.to_hash

    Task.create(task_params)

    redirect_to tasks_path

  end

  def show
    puts ">>>JCL: In BooksController#show"
    puts params.to_hash
    id = params[:id].to_i
    @task = Task.find(id)
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at, :done)
  end


end

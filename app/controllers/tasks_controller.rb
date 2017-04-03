class TasksController < ApplicationController
  # TASKS = [
  #   { name: "The First Task", description: "", completed_at: "random_time" },
  #   { name: "Go to Brunch", description: "" },
  #   { name: "Go to Lunch", description: "", completed_at: "random_time" },
  #   { name: "Go to Second Lunch", description: "" },
  #   { name: "Play Video Games", description: "", completed_at: "random_time" },
  #   { name: "High Five Somebody You Don't Know", description: "", completed_at: "random_time" },
  #   { name: "Plant Flowers", description: "", completed_at: "random_time" },
  #   { name: "Call Mom", description: "" },
  #   { name: "She worries, you know.", description: "" },
  #   { name: "Nap.", description: "", completed_at: "random_time" }]

  def index
    @tasks = Task.all

  end

  def new
    @task = Task.new
  end

  def create
    puts ">>>>>> MGL: In BooksController#create"
    puts params[:task].to_hash

    Task.create(task_params)
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to task_path(task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def complete
    task = Task.find(params[:id])
    completion = DateTime.now
    task.update(completion_date: completion)
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end
end

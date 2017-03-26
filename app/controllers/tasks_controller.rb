class TasksController < ApplicationController

  TASKS = [
{ name: "The First Task", description: "", completed_at: "random_time" },
{ name: "Go to Brunch", description: "" },
{ name: "Go to Lunch", description: "", completed_at: "random_time" },
{ name: "Go to Second Lunch", description: "" },
{ name: "Play Video Games", description: "", completed_at: "random_time" },
{ name: "High Five Somebody You Don't Know", description: "", completed_at: "random_time" },
{ name: "Plant Flowers", description: "", completed_at: "random_time" },
{ name: "Call Mom", description: "" },
{ name: "She worries, you know.", description: "" },
{ name: "Nap.", description: "", completed_at: "random_time" },
{ name: "Pet a puppy", description: "", completed_at: "random_time" }]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task_data = task_params
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
    task.update_attributes(task_params)
    task.save

    redirect_to task_path(task)
  end

  def completed
    task = Task.find(params[:id])
    time = DateTime.now
    task.write_attribute(:completed_at, time)
    task.save

    redirect_to tasks_path
  end

  def destroy
  task = Task.find(params[:id])
  task.destroy

  redirect_to tasks_path
  end

private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at)
  end
end

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
  #   { name: "Nap.", description: "", completed_at: "random_time" }
  # ]

  def index
    @tasks = Task.all
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

  private

  def task_params # strong params, prevent bad user input, only permit a task and a name and description to describe that task
    return params.require(:task).permit(:name, :description)
  end
end

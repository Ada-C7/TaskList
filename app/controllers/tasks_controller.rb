class TasksController < ApplicationController

# TASKS = [
#   { name: "The First Task", description: "Wake up. Turn off alarm."  },
#   { name: "Go to Brunch", description: "Meet Jenni & crew at Wayward." },
#   { name: "Go to Lunch", description: "1pm. meet mentor" },
#   { name: "Go to Second Lunch", description: "3pm. Meet sisters." },
#   { name: "Play Video Games", description: "Ratchet & Clank" },
#   { name: "High Five Somebody You Don't Know", description: "pick random stranger on the street." },
#   { name: "Plant Flowers", description: "stop at nursery on the way home." },
#   { name: "Call Mom", description: "at 3p. Try land line first" },
#   { name: "She worries, you know.", description: "Try and draw her about concerns." },
#   { name: "Nap.", description: " 3 hours at a minimum"}
# ]

  # def random_time
  #     Time.at(rand * Time.now.to_i)
  # end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    puts ">>>> ELPD: In TasksController #create"
    puts params[:task].to_hash

    Task.create(task_params)

    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
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
    task = Task.find(params[:id])
    task.destroy

    redirect_to tasks_path
  end

  def mark_complete
    task = Task.find(params[:id])
    task.mark_complete

    redirect_to task_path(task)
  end

  def mark_incomplete
    task = Task.find(params[:id])
    task.mark_incomplete

    redirect_to task_path(task)
  end

private
  def task_params
    return params.require(:task).permit(:name, :description)
  end


end

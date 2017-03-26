class TasksController < ApplicationController
  # TASKS = [{ name: "The First Task", description: "This is a description for the first task.", completed_at: "random_time "},
  #   { name: "Go to Brunch", description: "This is a description for the brunch." },
  #   { name: "Go to Lunch", description: "This is a description for the lunch.", completed_at: "random_time" },
  #   { name: "Go to Second Lunch", description: "This is a description for the second lunch." },
  #   { name: "Play Video Games", description: "This is a description for playing video games.", completed_at: "random_time "},
  #   { name: "High Five Somebody You Don't Know", description: "This is a description for highfiving someone.", completed_at: "random_time" },
  #   { name: "Plant Flowers", description: "This is a description for planting flowers.", completed_at: "random_time "},
  #   { name: "Call Mom", description: "This is a description for playing video games." },
  #   { name: "She worries, you know.", description: "This is a description for how to worry." },
  #   { name: "Nap.", description: "This is a description for taking a nap.", completed_at: "random_time "}]


#### COLLETION
  def index
    puts ">>>>>>amb<<<<<<<<:  Inside tasks index!"
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  def create
    Task.create(task_params)
    redirect_to tasks_path
  end


#### SINGLE ITEM
  def show
    # id = params[:id].to_i
    # @task = Task.find(id)
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end
  def update
    task =  Task.find(params[:id])
    task.update_attributes(task_params)
    task.save
    redirect_to task_path(task)
  end

  def status
    task = Task.find(params[:id])
    task[:completion_date] = Time.now
    task.save
    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    # Todo show the list of tska//

    redirect_to tasks_path
    #Another way instead of re_direct
    # @tasks = Tasks.all
    # render :index
  end


  private
  def task_params
    params.require(:task).permit(:name, :description, :completion_date)
  end
end

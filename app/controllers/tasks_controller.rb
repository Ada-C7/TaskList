class TasksController < ApplicationController
  def index
    # @tasks = ["Buy Grocery", "Unload Dishwasher", "Call the Insurance"]
    # @my_assignment = Assignment.all
    @my_task = Task.all

  end

  def show
    @result_task = Task.find(params[:id])
    # @my_assignment = assignment.find(params[:id])

  end

# Edit a Task

  def edit
  @task = Task.find(params[:id])
  end

  def update

    task = Task.find(params[:id])
     if task.update(task_params)
       redirect_to tasks_path
     end
  end

  def completed
    task = Task.find(params[:id])
    if task.completion_date != nil
      task.completion_date = nil
    else
      task.completion_date = Time.now
    end
    task.save

    redirect_to tasks_path



  end

# Create a Form to add a new task
  def new
    @task = Task.new
  end

  def create
  #   task = Task.new
  #   task.name = params[:name]
  #   task.description = params[:description]
  #   task.completion_date = params[:completion_date]
  #
  #   if task.save
  #     redirect_to tasks_path
  #   end
  task = Task.create task_params

    unless task.id == nil
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path

  end

    private

    def task_params
      params.require(:task).permit(:name, :description, :Due_date)
    end

end

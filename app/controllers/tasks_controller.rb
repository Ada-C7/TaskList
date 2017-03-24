class TasksController < ApplicationController
  # def self.random_time
  #   Time.at(rand * Time.now.to_i)
  # end

# TASKS = [{ name: "Breakfast", description: "Don't forget to eat", completion_date: random_time },
#          { name: "Lunch", description: "Eat MOAR. Food 4 lyfe", completion_date: random_time },
#          { name: "Dinner", description: "Don't forget to eat. OMG!", completion_date: random_time }]

  def index
    @tasks = Task.all
  end

  def new
    @task=Task.new
  end

  def create
    Task.create(task_params)
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

  def complete
      task = Task.find(params[:id])
      task.completion_date = DateTime.now
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
    return params.require(:task).permit(:name, :description, :completion_date)
  end
end

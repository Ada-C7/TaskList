class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task_result = Task.find params[:id]
  end

  def new
    @task = Task.new
  end

  def create

    task = Task.create task_params
    unless task.id == nil
      redirect_to tasks_path #this will always default to the GET verb unless otherwise specified
    end
    # task = Task.new
    # task.name = params[:name]
    # task.description = params[:description]
    # task.status = params[:status]
    # task.completion_date = params[:completion_date]
    # if task.save #wrap this in a conditional because this returns a boolean
    #   redirect_to tasks_path #this will always default to the GET verb unless otherwise specified
    # end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]
    task.name = task_params[:name]
    task.description = task_params[:description]
    task.completion_date = task_params[:completion_date]
    task.status = task_params[:status]


    if task.save
      redirect_to task_path #this is the show page
    end

  end

  def delete
    @task_result = Task.find params[:id]
    @task_result.destroy
    redirect_to tasks_index_path

  end

  def complete? f
    if true
    f.completion_date = Date.today
    else
    f.completion_date = nil
    end
  end


private

def task_params #this is called a strong param, it is a technique that limits what parameters are used in certain methods
  params.require(:task).permit(:name, :description, :completion_date, :status)
end

end

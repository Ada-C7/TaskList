class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
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
    # can use task.update to update and save to db at sametime
    # this will do a update_attribute and save "under the hood"
    redirect_to task_path(task)
  end

  def delete
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

private
# helper method to verify the given info from the user is not bad junk
# you have to do this or rails will NOT create a instance and put it in the DB
# this is called strong params - you cannot as easily give bad data - the params are
# strong because we call the require and permit methods on the user input
# if given bad stuff - it gets dumped but any "good data" will get through
# need to validate user input but we wont do that here or right now
  def task_params
    return params.require(:task).permit(:name, :description, :complete_by, :completed_at)
  end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # BASELINE:
    # @tasks = ["laundry", "clean room", "wash dishes", "work out", "homework", "groceries"]
  end

  def show
    @result_task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create task_params

    unless task.id == nil
      redirect_to tasks_path
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :due_date, :completion_date)
  end

end

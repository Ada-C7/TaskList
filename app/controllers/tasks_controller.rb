class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # BASELINE:
    # @tasks = ["laundry", "clean room", "wash dishes", "work out", "homework", "groceries"]
  end

  def show
    @result_task = Task.find(params[:id])
  end
end

class TasksController < ActionController::Base
  def index
    @tasks = Task.all
  end

  def show
    @show_task = Task.find(params[:id])
  end
end

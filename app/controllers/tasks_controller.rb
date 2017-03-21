class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @selected_task = Task.find params[:id]
  end

end

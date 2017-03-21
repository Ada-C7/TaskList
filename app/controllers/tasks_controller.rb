class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @result_task = Task.find(params[:id])
  end
end

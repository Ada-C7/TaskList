class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new

  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end
end

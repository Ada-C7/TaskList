class TasksController < ApplicationController

  def random_time
    Time.at(rand * Time.now.to_i)
  end


  def index
    @tasks = Task.all
  end

  def new
  end

  def show
    index = params[:id].to_i
    # @task = TASKS[index]
    @task = Task.find(index)
  end
end

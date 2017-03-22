class TasksController < ApplicationController

  def self.random_time
    Time.at(rand * Time.now.to_i)
  end

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    puts ">>>>>>> LMS: In TasksController#create"
    Task.create(task_params)
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at)
  end
end

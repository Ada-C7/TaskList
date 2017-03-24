class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end

    def new
      # @task = Task.new
    end

    def create
      task_data = task_params
      puts task_data.to_hash
      Task.create(task_data)

      redirect_to tasks_path
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

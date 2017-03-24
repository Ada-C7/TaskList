class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end

    def new
      @task = Task.new
    end

    def create
      Task.new(task_params)

      redirect_to tasks_path
    end

    def show
      @task = Task.find(params[:id])
    end

  private
    def task_params
      return params.require(:task).permit(:name, :description, :completed_at)
    end
  end

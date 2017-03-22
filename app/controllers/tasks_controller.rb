class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
     end

    def create
        new
        if @task.update(task_params)
            redirect_to tasks_path
        else
            render 'new'
    end
  end

    def edit
        @task = Task.find(params[:id])
     end

    def update
        edit
        if @task.update(task_params)
            redirect_to task_path(@task.id)
        else
            render 'edit'
        end
    end

    def show
        id = params[:id].to_i
        @task = Task.find(id)
    end

    private

    def task_params
        params.require(:task).permit(:name, :description, :completed_at)
    end
end

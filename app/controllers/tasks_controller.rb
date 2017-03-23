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
        task = Task.find(params[:id])
        if task.update(task_params)
            redirect_to task_path(task)
        else
            render 'edit'
        end
    end

    def show
        id = params[:id].to_i
        @task = Task.find(id)
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
        flash[:success] = 'Task deleted'
        redirect_to tasks_path
    end

    def complete
        task = Task.find(params[:id])
        task.update_attribute(:completed_at, DateTime.current)
        flash[:success] = 'Task completed'
        redirect_to task_path(task)
    end

    private

    def task_params
        params.require(:task).permit(:name, :description, :completed_at)
    end
end

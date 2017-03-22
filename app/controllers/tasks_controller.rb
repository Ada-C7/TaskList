class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
      @task = Task.find(params[:id])
  end

  def new
      @task = Task.new
  end

    def create
        task = Task.create task_params

        unless task.id == nil
            redirect_to tasks_path
        end
      #   task = Task.new
      #   task.name = params[:name]
      #   task.description = params[:description]
      #   if task.save
      #       redirect_to tasks_path
      #   end
    end

      private

      def task_params
        params.require(:task).permit(:name, :description, :date)
      end
end

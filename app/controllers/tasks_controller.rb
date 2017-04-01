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
     end

     def edit
          @task = Task.find(params[:id])
     end

     def update
          task = Task.find(params[:id])

          task.description = params[:task][:description]
          task.notes = params[:task][:notes]

          if task.save
               redirect_to task_path(task.id)
          end
     end

     def complete
          task = Task.find(params[:id])
          task.status = true
          task.completed_at = DateTime.now

          if task.save
               redirect_to task_path(task.id)
          end
     end

     def destroy
          task = Task.destroy(params[:id])

          redirect_to tasks_path

     end
     private

     def task_params
          params.require(:task).permit(:description, :notes)
     end

end

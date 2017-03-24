class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @show_task = Task.find(params[:id])
  end

  def create
    task = Task.create task_params
    unless task.id == nil
      redirect_to tasks_path
    end
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def completed
    task = Task.find(params[:id])
    task.due_date = Time.now
    task.save
    redirect_to tasks_path
  end

private

def task_params
  params.require(:task).permit(:title, :description, :due_date, :priority)
end

end


# @tasks = [
#   { id: 1, task: "Run"},  { id: 2, task: "Family Morning Routine"},
#   { id: 3, task: "Drop off kid"}, { id: 4, task: "School"}, { id: 5, task: "Shopping"},
#   { id: 6, task: "Dinner"}, { id: 7, task: "Kid Bedtime"}, { id: 8, task: "Routine"},
#   { id: 9, task: "Homework"}, { id: 10, task: "Organinze for tomorrow"}
# ]
# end
#
# def show
# tasks = [
#   { id: 1, task: "Run"},  { id: 2, task: "Family Morning Routine"},
#   { id: 3, task: "Drop off kid"}, { id: 4, task: "School"}, { id: 5, task: "Shopping"},
#   { id: 6, task: "Dinner"}, { id: 7, task: "Kid Bedtime"}, { id: 8, task: "Routine"},
#   { id: 9, task: "Homework"}, { id: 10, task: "Organinze for tomorrow"}
# ]
#
# result_task = nil
# tasks.each do |task|
#   if params[:id].to_i == task[:id]
#     result_task = task
#   end

class TasksController < ApplicationController
  TASKS =[
    { task: "walk to school", deadline: "8:30 am, M-F" , id:1},
    { task: "pray", deadline: "7:30 am, M-Su", id:2},
    { task: "physical therapy", deadline: "9:30 pm, M-F", id:3},
    { task: "homework", deadline: "6:30 pm, M-F", id:4}
  ]

  def index
    # puts "Inside the puts in books#index!"
    @tasks = TASKS
  end


  def show
    id = params[:id].to_i
  @task = TASKS[id]
    # @id =[]
    # @tasks.each do |task|
    #   if task[:id] == params[:id]
    #     @id << "Task ##{task[:id]}: #{task[:task]} deadline:#{task[:deadline]}"
    #   end
    #   @id
    # end
  end
end

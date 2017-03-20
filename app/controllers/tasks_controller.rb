class TasksController < ApplicationController
  def index
    # puts "Inside the puts in books#index!"
    @tasks = [{ task: "walk to school", deadline: "8:30 am, M-F"},
              { task: "pray", deadline: "7:30 am, M-Su"},
              { task: "physical therapy", deadline: "9:30 pm, M-F"},
              { task: "homework", deadline: "6:30 pm, M-F"}]
  end
end

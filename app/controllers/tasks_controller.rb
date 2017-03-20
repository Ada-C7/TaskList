class TasksController < ApplicationController

    TASKS = [
      { name: "The First Task", description: "Stuff", completed_at: "8AM" },
      { name: "Go to Brunch", description: "Things" },
      { name: "Go to Lunch", description: "Yum", completed_at: "8AM" },
      { name: "Go to Second Lunch", description: "Yummer" },
      { name: "Play Video Games", description: "Yummmmm", completed_at: "8AM" },
      { name: "High Five Somebody You Don't Know", description: "HIGH FIVE", completed_at: "8AM" },
      { name: "Plant Flowers", description: "DIRT", completed_at: "8AM" },
      { name: "Call Mom", description: "if you really want to" },
      { name: "She worries, you know.", description: "always" },
      { name: "Nap.", description: "alwayssssss", completed_at: "8AM" }
    ]
  def index
    @tasks = TASKS
  end

  def show
    id = params[:id].to_i
    @task = TASKS[id]
  end


end

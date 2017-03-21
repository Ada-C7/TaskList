class TasksController < ApplicationController
  # TASKS = [{ name: "The First Task", description: "This is a description for the first task.", completed_at: "random_time "},
  #   { name: "Go to Brunch", description: "This is a description for the brunch." },
  #   { name: "Go to Lunch", description: "This is a description for the lunch.", completed_at: "random_time" },
  #   { name: "Go to Second Lunch", description: "This is a description for the second lunch." },
  #   { name: "Play Video Games", description: "This is a description for playing video games.", completed_at: "random_time "},
  #   { name: "High Five Somebody You Don't Know", description: "This is a description for highfiving someone.", completed_at: "random_time" },
  #   { name: "Plant Flowers", description: "This is a description for planting flowers.", completed_at: "random_time "},
  #   { name: "Call Mom", description: "This is a description for playing video games." },
  #   { name: "She worries, you know.", description: "This is a description for how to worry." },
  #   { name: "Nap.", description: "This is a description for taking a nap.", completed_at: "random_time "}]

  def index
    puts ">>>>>>amb<<<<<<<<:  Inside tasks index!"
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end
end

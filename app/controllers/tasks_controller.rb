class TasksController < ApplicationController

  def self.random_time
    Time.at(rand * Time.now.to_i)
  end

  # TASKS = [
  #   { name: "The First Task", description: "Very first thing to do", completed_at: 'Way too eary' },
  #   { name: "Go to Brunch", description: "eat brunch", completed_at: '10am' },
  #   { name: "Go to Lunch", description: "eat lunch", completed_at: random_time },
  #   { name: "Go to Second Lunch", description: "eat lunch again" },
  #   { name: "Play Video Games", description: "win at pac-man", completed_at: random_time },
  #   { name: "High Five Somebody You Don't Know", description: "make a friend", completed_at: random_time },
  #   { name: "Plant Flowers", description: "garden", completed_at: random_time },
  #   { name: "Call Mom", description: "talk to your mother" },
  #   { name: "She worries, you know.", description: "" },
  #   { name: "Nap", description: "zzzzzzz", completed_at: random_time }
  # ]


  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

end

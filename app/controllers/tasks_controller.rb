class TasksController < ApplicationController

  def index
    puts ">>>TT: from inside TasksController"
    @tasks = [
      { name: "The First Task", description: "", priority: "low" },
      { name: "Go to Brunch", description: "with some friends" },
      { name: "Go to Lunch", description: "", priority: "normal"  },
      { name: "Go to Second Lunch", description: "ugh" },
      { name: "Play Video Games", description: "Pokemon GO!", priority: "low" },
      { name: "High Five Somebody You Don't Know", description: "", priority: "" },
      { name: "Plant Flowers", description: "", priority: "low" },
      { name: "Call Mom", description: "" },
      { name: "She worries, you know.", description: "" },
      { name: "Nap.", description: "at least 2 hours", priority: "high"  }
    ]
  end

  def show
  end
end

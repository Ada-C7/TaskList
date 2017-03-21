class TasksController < ApplicationController

  # TASKS = [
  #       { name: "The First Task", description: "Be amazing", completed_at: 'random_time' },
  #       { name: "Go to Brunch", description: "Location - Portage Bay" },
  #       { name: "Go to Lunch", description: "Location: Thai", completed_at: 'random_time' },
  #       { name: "Go to Second Lunch", description: "Location: Cafe Ladro" },
  #       { name: "Play Video Games", description: "Zelda Ocarina of Time", completed_at: 'random_time' },
  #       { name: "High Five Somebody You Don't Know", description: "", completed_at: 'random_time' },
  #       { name: "Plant Flowers", description: "sun flowers, roses, lavander", completed_at: 'random_time' },
  #       { name: "Call Mom", description: "at 6:30pm" },
  #       { name: "Nap", description: "45 min max", completed_at: 'random_time' }
  #     ]

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end
end

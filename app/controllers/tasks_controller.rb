class TasksController < ApplicationController
  def self.random_time
    Time.at(rand * Time.now.to_i)
  end

TASKS = [{ name: "Breakfast", description: "Don't forget to eat", completed_at: random_time },
         { name: "Lunch", description: "Eat MOAR. Food 4 lyfe", completed_at: random_time },
         { name: "Dinner", description: "Don't forget to eat. OMG!", completed_at: random_time }]

  def index
    @tasks = TASKS
  end

  def show
    id = params[:id].to_i
    @task = TASKS[id]
  end

end

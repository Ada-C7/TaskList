class TasksController < ApplicationController
  def self.random_time
    Time.at(rand * Time.now.to_i)
  end

TASKS = [{ name: "Breakfast", description: "Don't forget to eat", completion_date: random_time },
         { name: "Lunch", description: "Eat MOAR. Food 4 lyfe", completion_date: random_time },
         { name: "Dinner", description: "Don't forget to eat. OMG!", completion_date: random_time }]

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

end

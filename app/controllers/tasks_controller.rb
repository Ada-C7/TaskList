class TasksController < ApplicationController

  TASKS = [{what: "grocery shopping", when: "today"},
    {what: "homework", when: "daily"},
    {what: "adopt a dog", when: "ASAP"}]

    def index
      @tasks = TASKS
    end

    def show
      id = params[:id].to_i
      @task = TASKS[id]
    end
  end


# def random_time
#   Time.at(rand * Time.now.to_i)
# end
# def index
#   @tasks = [
#     { name: "The First Task", description: "", completed_at: random_time },
#     { name: "Go to Brunch", description: "" },
#     { name: "Go to Lunch", description: "", completed_at: random_time },
#     { name: "Go to Second Lunch", description: "" },
#     { name: "Play Video Games", description: "", completed_at: random_time },
#     { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
#     { name: "Plant Flowers", description: "", completed_at: random_time },
#     { name: "Call Mom", description: "" },
#     { name: "She worries, you know.", description: "" },
#     { name: "Nap.", description: "", completed_at: random_time }
#   ]
# end
# tasks.each do |task|
#   Task.create task
# end
# end

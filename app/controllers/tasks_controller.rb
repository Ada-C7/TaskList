class TasksController < ApplicationController
  def index
    # @tasks = [
    #   { task: "sleep", priority: "high" },
    #   { task: "code", priority: "high" },
    #   { task: "eat", priority: "medium" },
    #   { task: "buy groceries", priority: "medium" }
    # ]

    @tasks = Task.all
  end

  def show
    # tasks = [
    #   { id: 1, task: "sleep", priority: "high" },
    #   { id: 2, task: "code", priority: "high" },
    #   { id: 3, task: "eat", priority: "medium" },
    #   { id: 4, task: "buy groceries", priority: "medium" }
    # ]
    #
    # @result_task = nil
    # tasks.each do |task|
    #   if params[:id].to_i == task[:id]
    #     @result_task = task
    #   end
    # end

    @result_task = Task.find(params[:id])
  end
  
end

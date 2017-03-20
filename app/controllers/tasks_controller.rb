class TasksController < ApplicationController
  def index
    @tasks = [
      { task: "sleep", priority: "high" },
      { task: "code", priority: "high" },
      { task: "eat", priority: "medium" },
      { task: "buy groceries", priority: "medium" }
    ]
  end
end

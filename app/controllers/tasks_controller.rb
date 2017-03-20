class TasksController < ApplicationController
  def index
    @tasks = [{ task: "Pet a puppy", priority: "High"},
              { task: "Buy groceries", priority: "Low"},
              { task: "Clean room", priority: "High"}]
  end
end

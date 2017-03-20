class TasksController < ApplicationController
  def index
    @tasks = [
    { description: "Run", assigned: "Haby"},
    { description: "Groceries", assigned: "Janice"},
    { description: "Dinner", assigned: "Olivia"}
  ]
  end
end

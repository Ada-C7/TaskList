class TasksController < ApplicationController
  def index
    @tasks = [
      "Laundry",
      "Groceries",
      "Walk dog",
      "Dance",
      "Work-out" 
    ]
  end
end

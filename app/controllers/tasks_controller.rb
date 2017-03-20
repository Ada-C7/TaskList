class TasksController < ApplicationController
  def index
    @tasks = ["Wash dishes", "Vacuum", "Do homework", "Brush teeth"]
  end
end

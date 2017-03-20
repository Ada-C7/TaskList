class TasksController < ApplicationController
  def index
    @tasks = ["homework", "laundry", "groceries", "insurance"]
  end
end

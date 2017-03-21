class TasksController < ApplicationController
  def index
    @tasks = ["grocery shopping", "homework", "take a nap", "laundry"]  
  end
end

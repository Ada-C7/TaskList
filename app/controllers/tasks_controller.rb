class TasksController < ApplicationController
  def index
    @list = [
      "Buy more turkey",
      "Make a sandwich"
    ]
  end
end

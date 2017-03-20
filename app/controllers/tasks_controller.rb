class TasksController < ApplicationController
  def index
    @tasks = [sleep, code, eat, laugh]
  end
end

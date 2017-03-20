class TasksController < ApplicationController
  def index
    @tasks = ["Work Out", "Homework", "Eat"]
  end
end

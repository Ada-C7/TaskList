class TasksController < ApplicationController

  attr_reader :tasks
  def index
    @tasks = [
      {id: 1, title: "Sweep the ceiling", duedate: "01-01-2020", priority: "HIGH"},
      {id: 2, title: "Iron the pancakes", duedate: "12-31-3036", priority: "LOW"},
      {id: 3, title: "Mushroom the fungi", duedate: "09-21-1908", priority: "MEDIUM"}
    ]
  end

  def show
    @task = params[:id]
  end
end

class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "Sweep the ceiling", duedate: "01-01-2020", priority: "HIGH"},
      {title: "Iron the pancakes", duedate: "12-31-3036", priority: "LOW"},
      {title: "Mushroom the fungi", duedate: "09-21-1908", priority: "MEDIUM"}
    ]
  end
end

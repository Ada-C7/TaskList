class TasksController < ActionController::Base
  def index
    @tasks = [
      { task: "Laundry"},
      { task: "Dishes"},
      { task: "Homework"},
      { task: "Clean Bathroom"}
    ]
  end
end

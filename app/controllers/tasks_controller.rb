class TasksController < ApplicationController
  def index
    @tasks = [
      {short_term: ["task1", "task2", "task3"]},
      {medium_term: ["task1", "task2", "task3"]},
      {big_goals: ["task1", "task2", "task3"]}
    ]
  end
end

class TasksController < ApplicationController

  def index
    @tasks = [
      {id: "1", title: "Sweep the ceiling", duedate: "01-01-2020", priority: "HIGH"},
      {id: "2", title: "Iron the pancakes", duedate: "12-31-3036", priority: "LOW"},
      {id: "3", title: "Mushroom the fungi", duedate: "09-21-1908", priority: "MEDIUM"}
    ]
  end

  def show
    tasks = [
      {id: "1", title: "Sweep the ceiling", duedate: "01-01-2020", priority: "HIGH"},
      {id: "2", title: "Iron the pancakes", duedate: "12-31-3036", priority: "LOW"},
      {id: "3", title: "Mushroom the fungi", duedate: "09-21-1908", priority: "MEDIUM"}
    ]
    @result_task = nil
    tasks.each do |task|
      if params[:id] == task[:id]
        @result_task = task
      end
    end

    @prev_id = (params[:id].to_i - 1).to_s
    @next_id = (params[:id].to_i + 1).to_s
  end
end

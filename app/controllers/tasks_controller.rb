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
    ids = []
    tasks.each do |task|
      ids << task[:id].to_i
    end

    max_id = ids.max
    min_id = ids.min

    if (params[:id].to_i - 1) >= min_id
      @prev_id = (params[:id].to_i - 1).to_s
    else
      @prev_id = params[:id]
    end

    if (params[:id].to_i + 1) <= max_id
      @next_id = (params[:id].to_i + 1).to_s
    else
      @next_id = params[:id]
    end
  end
end

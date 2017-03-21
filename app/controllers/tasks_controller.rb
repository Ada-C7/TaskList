class TasksController < ApplicationController
  def index
    @tasks = Task.all
    #   { "completed": ["laundry", "grocery shopping", "bills" ] },
    #   { "in progress": ["homework", "pack bags", "taxes"] },
    #   { "uninitiated": ["insurance"] }
    # ]
  end

  def show
    @task_result = Task.find params[:id]

  end

end

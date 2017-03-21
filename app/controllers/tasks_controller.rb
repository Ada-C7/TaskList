class TasksController < ApplicationController

  def index

    @tasks = Task.all

  end

  def show

    @result_task = Task.find(params[:id])
    tasks = Task.all

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

  def new
    
  end
end

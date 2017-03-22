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
    @task = Task.new
  end

  def create
    @task = Task.new(title: params[:task][:title], description: params[:task][:description], duedate: params[:task][:duedate], priority: params[:task][:priority])

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end
  #
  # private
  #
  # def task_params
  #   params.require(:task).permit(:title, :description, :duedate, :priority)
  # end


end

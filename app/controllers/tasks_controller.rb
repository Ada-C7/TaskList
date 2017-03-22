class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      name: params[:task][:name],
      description: params[:task][:description]
    )

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(name: params[:task][:name], description: params[:task][:description])
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    Task.find(params[:id]).destroy

    redirect_to tasks_path
  end

  def complete
    @task = Task.find(params[:id])
    @task.mark_complete
    @task.save

    redirect_to tasks_path
  end

  def incomplete
    @task = Task.find(params[:id])
    @task.mark_incomplete
    @task.save

    redirect_to tasks_path
  end
end

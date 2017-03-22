class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new({:name=>params[:task][:name], :description=>params[:task][:description], :completed_at=>Time.at(rand * Time.now.to_i)})
    if @task.save
      redirect_to task_path(@task.id)
    else
      render :new
    end
  end

  def destroy #no actual page that you go to link to show/index page
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def edit #link will still go to the show, but need a separate page
    @task = Task.find(params[:id]) #access to the instance
  end

  def update #patch request doesn't need view only Get request needs view
    @task = Task.find(params[:id])
    if @task.update({:name=>params[:task][:name], :description=>params[:task][:description]})
      redirect_to task_path(@task.id)
    else
      render :edit #render to edit page
    end
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.update({:completed_at=>Time.now})
    redirect_to task_path(@task.id)
  end

end

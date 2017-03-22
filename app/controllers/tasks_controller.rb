class TasksController < ApplicationController
  # TASKS = [
  #   { name: "Pack bags", completed_at: "1:00 PM" },
  #   { name: "Print out reservation confirmations", completed_at: "1:30 PM" },
  #   { name: "Check-in for flight", completed_at: "2:00 PM" },
  #   { name: "Buy sunscreen", completed_at: "2:15 PM" },
  #   { name: "Prepare things kids will need", completed_at: "3:00 PM" },
  #   { name: "Pack the chargers", completed_at: "2:30 PM" },
  #   { name: "Write important info on Fridge board", completed_at: "3:00 PM" },
  #   { name: "Get cash", completed_at: "4:00 PM" },
  #   { name: "Get books from library", completed_at: "6:00 PM"},
  #   { name: "Grocery shopping", completed_at: "7:00 PM"}
  # ]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # puts ">>>> ECP: In TasksController#create"
    # puts params[:task].to_hash
    #
    # Task.create(params[:task])
    Task.create(task_params)

    redirect_to tasks_path
  end

  def show
    id = params[:id].to_i
    @task = Task.find[id]
  end

  def edit
    @task = Task.find(params[:id])
  end
  # def random_time
  #   Time.at(rand * Time.now.to_i)
  # end
  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at)
  end
end

class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end

    # def random_time
    #   Time.at(rand * Time.now.to_i)
    # end

    def show
      @task = Task.find(params[:id])
    end
  end

class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        id = params[:id].to_i + 1
        @task = Task.find_by(id: id)
    end
end

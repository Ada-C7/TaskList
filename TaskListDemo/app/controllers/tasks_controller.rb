class TasksController < ApplicationController


    TASKS = [
        { name: 'Go to Brunch', description: 'Eggs Benny & Avo Toast' },
        { name: 'Play Video Games', description: 'Zelda: Windwaker' },
        { name: "High Five Somebody You Don't Know", description: 'starbucks barista perhaps?' },
        { name: 'Plant Flowers', description: 'white roses' },
        { name: 'Call Mom', description: 'She worries, you know.' },
        { name: 'Nap.', description: '1 sheep, 2 sheep, 3 sheep.... 4..' }
    ].freeze

    def index
        @tasks = TASKS
    end

    def new
      @task = TASKS.new
    end

    def create
      @TASK = TASKS.create(task_params)
      if @task.save
        redirect_to task_path
      end
    end

    def show
      @task = TASKS.find(params[:id])
    end

    def show
      @tasks = TASKS


    end

    def destroy
    end

end

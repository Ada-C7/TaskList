class TasksController < ApplicationController
    TASKS = [
        { name: 'The First Task', description: '' },
        { name: 'Go to Brunch', description: '' },
        { name: 'Go to Lunch', description: '' },
        { name: 'Go to Second Lunch', description: '' },
        { name: 'Play Video Games', description: '' },
        { name: "High Five Somebody You Don't Know", description: '' },
        { name: 'Plant Flowers', description: '' },
        { name: 'Call Mom', description: '' },
        { name: 'She worries, you know.' },
        { name: 'Nap.', description: '' }
    ].freeze

    def index
        @tasks = TASKS
    end

    # def show
    #     id = params[:id]
    #     @task = TASK[id]
    # end
end

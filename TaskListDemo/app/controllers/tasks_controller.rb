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
      @array = [1,2,3,4,5]
        @tasks = TASKS
    end

    def completed
      @tasks = TASKS
        # redirect_to(controller: 'tasks', action: 'index')
    end



end

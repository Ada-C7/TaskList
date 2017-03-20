class TasksController < ApplicationController
  def index
    @tasks = [
              { task: "grocery shop",
                description: "Trader Joes: Eggs, Almonds, Oatmeal",
                due_date: "date",
              },

              { task: "clean bedroom",
                description: "vacuum, wash sheets, organize desk",
                due_date: "date",
              },

              { task: "homework",
                description: "finish rails baseline, clean up notes, watch video",
                due_date: "date" },

              { task: "workout-gym",
                description: "Belltown Crossfit",
                due_date: "date",
              }
             ]
  end

  # def show
  # end
end

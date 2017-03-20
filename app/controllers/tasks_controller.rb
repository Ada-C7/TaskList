class TasksController < ApplicationController
  def index
    @tasks = [
              { task: "grocery shop", complete_by: "date" },
              { task: "clean bedroom", complete_by: "date" },
              { task: "homework", complete_by: "date" },
              { task: "workout-gym", complete_by: "date" }
             ]
  end
end

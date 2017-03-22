class TasksController < ApplicationController
  
  def index
    @tasks = [
      {type: "School", name: "Read chapter"},
      {type: "Personal", name: "Mail package"}
    ]
  end

end

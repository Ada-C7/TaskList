class TasksController < ApplicationController
  def index
    @tasks = [
      { do: "walk the dog" },
      { do: "homework" },
      { do: "clean dishes" },
      { do: "see a movie" }
    ]
  end
end

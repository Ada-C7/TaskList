class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "make dinner", priority: :med},
      {title: "shower", priority: :high},
      {title: "pay bills", priority: :med},
      {title: "homework", priority: :high},
      {title: "clean house", priority: :low},
    ]
  end
end

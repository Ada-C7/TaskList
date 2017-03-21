class TasksController < ApplicationController
  def index
    @tasks = ["finish TaskList baseline", "watch the video for homework", "get dinner at Masonry", "hang out with Claire", "play new Zelda game", "read The Design of Everyday Things"]
  end
end

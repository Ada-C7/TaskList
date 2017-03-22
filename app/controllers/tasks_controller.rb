class TasksController < ApplicationController
  # def self.random_time
  #   Time.at(rand * Time.now.to_i)
  # end

  def index
    puts "HELLO TESTING TESTING"
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

end

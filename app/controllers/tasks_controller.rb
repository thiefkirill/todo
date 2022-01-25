class TasksControler < ApplicationController
  def home
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end
end
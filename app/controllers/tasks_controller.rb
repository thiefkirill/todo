class TasksController < ApplicationController
  def home
    @tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
    redirect_to root_path
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(name: params[:task][:name])
    @task.update(task_params)
    redirect_to root_path(@task)
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy!
    redirect_to root_path(@task)
  end
  def show
    @task = Task.find(params[:id])
  end
  private
  def task_params
    params.require(:task).permit( :name)
  end
end
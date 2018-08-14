class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
  end

  def create
    allowed_params = params.require(:task).permit(:title, :details)
    @task = Task.create!(allowed_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  @task = Task.find(params[:id])
  allowed_params = params.require(:task).permit(:title, :details)
   @task.update(allowed_params)
   redirect_to tasks_path(@task.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end
end

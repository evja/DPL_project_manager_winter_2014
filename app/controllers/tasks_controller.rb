class TasksController < ApplicationController
  before_action :set_project, only: [:new, :create, :edit, :destroy]
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :set_sidebar_projects

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)
    if @task.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @task.update(task_params)
      redirect_to @project
  end

  def destroy
    @task.destroy
    redirect_to @project
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def set_project
     @project = Project.find(params[:project_id])
    end

    def task_params
      params.require(:task).permit(:title, :completed, :deadline, :completed_at)
    end
end





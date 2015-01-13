class TasksController < ApplicationController
  before_action :set_project, only: [:new, :update, :create, :destroy, :edit, :toggle]
  before_action :set_task, only: [:edit, :update, :destroy, :toggle]
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
    if @task.update_attributes(task_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to @project
  end

  def toggle
    @task.toggle!(:is_completed)
    respond_to do |format|
      format.js
    end
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :deadline, :is_completed)
    end
end

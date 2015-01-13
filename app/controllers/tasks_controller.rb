class TasksController < ApplicationController
<<<<<<< HEAD
  before_action :set_project, only: [:new, :update, :create, :destroy, :edit, :toggle]
  before_action :set_task, only: [:edit, :update, :destroy, :toggle]
  before_action :set_sidebar_projects
=======
  before_action :set_project, only: [:new, :update, :create, :destroy, :edit, :mark_completed, :mark_not_completed]
  before_action :set_task, only: [:edit, :update, :destroy]
>>>>>>> 1e6aa68c4b14d961e5afb5dfa863f1eea85c2429

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

<<<<<<< HEAD
  def toggle
    @task.toggle!(:is_completed)
    respond_to do |format|
      format.js
    end
=======
  def mark_completed
    set_completed_flag(params[:task_id], true)
  end

  def mark_not_completed
    set_completed_flag(params[:task_id], false)
>>>>>>> 1e6aa68c4b14d961e5afb5dfa863f1eea85c2429
  end

  private

    def set_completed_flag(task_id, complete_value)
      @task = @project.tasks.find_by(id: task_id)
      @task.update_attributes(is_completed: complete_value)
    end

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

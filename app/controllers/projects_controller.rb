class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_sidebar_projects

  def show
  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'New Project Created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project Successfuly Updated'
    else
      render :edit
    end
  end

  def destroy
    @project.delete
    redirect_to projects_path, notice: 'Project Destroyed'
  end

  private

   def set_project
     @project = Project.find(params[:id])
   end

   def project_params
    params.require(:projects).permit(:title, :description, :deadline)
  end
end

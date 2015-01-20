class ProjectsController < ApplicationController
  before_action :set_sidebar_projects
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end


  def create
    @project = @user.projects.build(project_params)
    if @project.save
      respond_to do |format|
        format.html { redirect_to @project }
        format.js
      end
    else
      flash[:error] = @project.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    def project_params
      params.require(:project).permit(:team, :title, :description, :deadline, :user_id, :owner)
    end
end

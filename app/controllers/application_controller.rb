class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  before_action :set_sidebar_projects

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def set_sidebar_projects
      @sidebar_projects = Project.all
    end

end

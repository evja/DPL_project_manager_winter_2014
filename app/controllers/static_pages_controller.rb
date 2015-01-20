class StaticPagesController < ApplicationController
  before_action :set_sidebar_projects
  skip_before_filter :authenticate_user!, only: ['home']

  def home
  end

  def about
  end

  def easter_egg
    respond_to do |format|
      format.js
    end
  end
end

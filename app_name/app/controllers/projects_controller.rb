class ProjectsController < ApplicationController
  before_action :current_user

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.build(params.require(:project).permit(:name))

    @project.save
    redirect_to projects_url

  end
end

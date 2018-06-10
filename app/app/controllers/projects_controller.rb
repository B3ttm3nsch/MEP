class ProjectsController < ActionController::Base
  def index
    @projects = Tblproject.all
  end

  def show
    @project = Tblproject.find(params[:id])
  end
end
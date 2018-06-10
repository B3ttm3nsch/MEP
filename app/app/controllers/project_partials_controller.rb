class ProjectPartialsController < ApplicationController
  def index
    @project = Tblproject.find(params[:project_id])
    @project_partials = @project.project_partials.all
    #@project_partials = Tblproject.find(params[:project_id]).project_partials
  end

  def show
    @project_partial = BsagProjectPartial.find(params[:id])
  end
end

class ProjectsTableController < ApplicationController
  unloadable


  def index
    @projects = Project.all
  end
end

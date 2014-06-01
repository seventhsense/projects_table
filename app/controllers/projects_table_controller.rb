class ProjectsTableController < ApplicationController
  unloadable

  def index
    @projects = Project.where('status <> 5')
  end

end

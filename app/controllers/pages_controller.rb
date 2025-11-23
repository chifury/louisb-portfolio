class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @projects = Project.all
  end

  def profile
    @user = current_user
    @projects = Project.all
    @projects_total = Project.all.count
    @personal_projects_count = Project.where(personal_project: true).count
    @non_personal_projects_count = Project.where(personal_project: false).count
  end
end

class AddPersonalProjectToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :personal_project, :boolean
  end
end

class AddProjectBgToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_bg, :string
  end
end

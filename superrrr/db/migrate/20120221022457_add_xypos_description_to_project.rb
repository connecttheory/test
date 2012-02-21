class AddXyposDescriptionToProject < ActiveRecord::Migration
  def change
    add_column :projects, :proj_description_left, :integer
    add_column :projects, :proj_description_top, :integer
  end
end

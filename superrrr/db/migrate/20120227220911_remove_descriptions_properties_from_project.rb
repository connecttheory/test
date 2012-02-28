class RemoveDescriptionsPropertiesFromProject < ActiveRecord::Migration
  def up
    remove_column("projects", "description_height")
    remove_column("projects", "description_width")
    remove_column("projects", "font_color_description")
    remove_column("projects", "bg_color_description")
    remove_column("projects", "proj_description_left")
    remove_column("projects", "proj_description_top")
  end

  def down
    add_column("projects", "proj_description_top", :integer)
    add_column("projects", "proj_description_left", :integer)
    add_column("projects", "bg_color_description", :string)
    add_column("projects", "font_color_description", :string)
    add_column("projects", "description_width", :integer)
    add_column("projects", "description_height", :integer)
  end
end

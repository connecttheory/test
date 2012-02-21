class AddBgFcolorDescrToProject < ActiveRecord::Migration
  def change
    add_column :projects, :bg_color_description, :string
    add_column :projects, :font_color_description, :string
  end
end

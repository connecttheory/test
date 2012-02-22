class AddWxHDescriptionwrapToProject < ActiveRecord::Migration
  def change
    add_column :projects, :description_width, :integer
    add_column :projects, :description_height, :integer
  end
end

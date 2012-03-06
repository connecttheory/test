class AddProjectThumbWrapHolderWidthToUser < ActiveRecord::Migration
  def change
    add_column :users, :project_thumb_holder_width, :integer
  end
end

class AddProjectThumbWrapHolderYToUser < ActiveRecord::Migration
  def change
    add_column :users, :project_thumb_wrap_holder_Y, :integer
  end
end

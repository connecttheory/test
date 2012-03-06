class AddImageContainerLeftRightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_container_top, :integer
    add_column :users, :image_container_left, :integer
  end
end

class AddXyPostionNavToUsers < ActiveRecord::Migration
  def change
    add_column :users, :proj_nav_top, :integer
    add_column :users, :proj_nav_left, :integer
  end
end

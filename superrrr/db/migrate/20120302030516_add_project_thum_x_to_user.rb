class AddProjectThumXToUser < ActiveRecord::Migration
  def change
    add_column :users, :project_thumb_wrap_holder_X, :integer
  end
end

class AddLogoWidthToUser < ActiveRecord::Migration
  def change
    add_column :users, :logo_width, :integer
  end
end

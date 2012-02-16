class AddTopAndLeftLogoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :logo_left, :integer
    add_column :users, :logo_top, :integer
  end
end

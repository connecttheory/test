class AddMarginTbToUsers < ActiveRecord::Migration
  def change
    add_column :users, :margin_top, :integer
    add_column :users, :margin_bottom, :integer
  end
end

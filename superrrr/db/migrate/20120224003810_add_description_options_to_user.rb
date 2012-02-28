class AddDescriptionOptionsToUser < ActiveRecord::Migration
  def change
    add_column :users, :description_width, :integer
    add_column :users, :description_height, :integer
    add_column :users, :description_font_color, :string
    add_column :users, :description_bg_color, :string
    add_column :users, :description_left, :integer
    add_column :users, :description_top, :integer
  end
end

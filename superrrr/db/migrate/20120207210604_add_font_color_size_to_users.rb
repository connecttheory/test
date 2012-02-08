class AddFontColorSizeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :font_color, :string
    add_column :users, :font_size, :integer
  end
end

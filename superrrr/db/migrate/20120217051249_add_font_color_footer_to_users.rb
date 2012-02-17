class AddFontColorFooterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :font_color_footer, :string
  end
end

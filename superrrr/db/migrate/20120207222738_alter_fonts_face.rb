class AlterFontsFace < ActiveRecord::Migration
  def up
    change_column("users", "font_face", :string)
  end

  def down
    change_column("users", "font_face", :integer)
  end
end

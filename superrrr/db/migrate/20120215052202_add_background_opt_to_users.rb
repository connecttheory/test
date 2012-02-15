class AddBackgroundOptToUsers < ActiveRecord::Migration
  def change
    add_column :users, :background_repeat, :string
    add_column :users, :background_pos_h, :string
    add_column :users, :background_pos_v, :string
    add_column :users, :background_attachment, :string
  end
end

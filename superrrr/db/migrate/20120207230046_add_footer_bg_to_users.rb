class AddFooterBgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :footer_bg, :string
  end
end

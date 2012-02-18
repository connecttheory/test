class AddBackgroundEnableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :enable_background_image, :boolean
  end
end

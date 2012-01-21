class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "username", :limit => 25
      t.string "email", :default => "", :null => false, :limit => 100
      t.string "hashed_password", :limit => 40
      t.string "salt", :limit => 40
      t.text "about_user"
      t.text "expertise"
      t.text "skills"
      t.text "location"
      t.text "phone"
      t.boolean "availability"
      
      t.timestamps
    end
    add_index("users", "username")
  end
end

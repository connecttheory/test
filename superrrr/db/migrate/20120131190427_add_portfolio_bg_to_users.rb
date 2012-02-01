class AddPortfolioBgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :portfolio_bg, :string
  end
end

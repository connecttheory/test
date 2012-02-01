class AddPortfolioLayoutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :portfolio_layout, :integer
  end
end

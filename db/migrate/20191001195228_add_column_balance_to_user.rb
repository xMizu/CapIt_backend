class AddColumnBalanceToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :balance, :integer
  end
end

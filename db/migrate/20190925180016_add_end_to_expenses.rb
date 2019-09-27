class AddEndToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :end, :datetime
  end
end

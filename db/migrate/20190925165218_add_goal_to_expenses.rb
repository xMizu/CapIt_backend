class AddGoalToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :goal, :boolean
  end
end

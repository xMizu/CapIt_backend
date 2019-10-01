class RemoveDescriptionFromExpenses < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :description
  end
end

class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :created_at, :category_id, :user_id, :goal
end

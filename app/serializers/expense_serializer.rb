class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount, :created_at, :category_id, :user_id

 

  belongs_to :user
  belongs_to :category
end

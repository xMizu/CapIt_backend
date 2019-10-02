class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :title, :amount, :created_at
  has_one :user
end

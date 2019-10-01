class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :title, :amount
  has_one :user
end

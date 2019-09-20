class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name

  has_many :expenses
  has_many :categories
end

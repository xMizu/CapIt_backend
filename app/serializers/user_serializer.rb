class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name


 has_many :expenses do 
  object.expenses.order(created_at: :desc)
 end
 has_many :categories
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name , :savings , :balance


 has_many :expenses do 
  object.expenses.where(goal: false).order(created_at: :desc)
 end

 def savings 
  object.expenses.where(goal: true).order(created_at: :desc)
 end
 has_many :categories do
  object.categories.uniq
 end
 has_many :incomes

 def balance 
  spending = object.expenses.sum(:amount)
  income = object.incomes.sum(:amount)
  return income - spending
 end

end

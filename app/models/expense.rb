class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :amount, presence: true
  validates :name, presence: true
  validate :amount_not_negative


  def amount_not_negative
    if amount <= 0
      errors.add(:amount, "has to be greater than 0")
    end
  end



end

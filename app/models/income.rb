class Income < ApplicationRecord
  belongs_to :user
  validate :amount_not_negative , on: :create
  validate :name_not_blank, on: :create

  def amount_not_negative
    if amount <= 0
      errors.add(:amount, "has to be greater than 0")
    end
  end

  def name_not_blank
    if title.empty? 
        errors.add(:name, "can not be blank")
    end
  end
end

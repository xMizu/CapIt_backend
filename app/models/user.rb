class User < ApplicationRecord
    has_many :expenses
    has_many :categories, through: :expenses
    has_many :incomes
    validates :username, presence: true, uniqueness: true
    has_secure_password
end

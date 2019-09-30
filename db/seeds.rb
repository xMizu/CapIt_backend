# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# require 'date'

10.times do 
    User.create(username: Faker::Name.first_name ,password: '123',name: Faker::Name.first_name,balance: 0)
end

# 10.times do 
#     Category.create(name: Faker::Coffee.blend_name)
# end

Category.create(name: 'Transport')
Category.create(name: 'Utilites')
Category.create(name: 'Services')
Category.create(name: 'Education')
Category.create(name: 'Entertainment')
Category.create(name: 'Fees')
Category.create(name: 'Financial')
Category.create(name: 'Food')
Category.create(name: 'Gift')
Category.create(name: 'Health')
Category.create(name: 'Home')
Category.create(name: 'Kids')
Category.create(name: 'Pets')
Category.create(name: 'Shopping')
Category.create(name: 'Taxes')
Category.create(name: 'Transfers')
Category.create(name: 'Travel')
Category.create(name: 'Uncategorized')
Category.create(name: 'Misc Expenses')
Category.create(name: 'Personal Care')


20.times do 
    Expense.create(category_id: rand(1..20), 
    user_id: rand(1..10),
    name: 'Gotta Spend!',
    description: 'Test',
    amount: rand(1000),
    goal: false,
    end: DateTime.now())
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
    User.create(username: Faker::Name.first_name ,password: '123',name: Faker::Name.first_name,balance: 0)
end

10.times do 
    Category.create(name: Faker::Coffee.blend_name)
end

20.times do 
    Expense.create(category_id: rand(1..10), 
    user_id: rand(1..10),
    name: 'Gotta Spend!',
    description: 'Test',
    amount: rand(1000))
end


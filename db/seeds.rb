# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




20.times do
  User.create(username: Faker::Name.name)
  Item.create(name: Faker::Cat.name, price: rand(1...100))
end

50.times do
  @user = User.all.sample.items << Item.all.sample
end

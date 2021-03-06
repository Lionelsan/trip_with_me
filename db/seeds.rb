# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Visit.destroy_all
User.destroy_all


puts "Creating visit..."
10.times do
    user = User.create(
    email: Faker::Internet.email,
    password: "123456"
    )

    30.times do
    Visit.create(
    title: ,
    description: ,
    price: rand(60,80,100,40),
    place: Faker::Address.city,
    tag: ,
    user: user

    )
    end
end
puts "Finished!"
puts "#{Visit.count}  visits created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning db now..."
Restaurant.destroy_all

puts "Creating restaurants now..."

i = 1
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    photo_url: "https://source.unsplash.com/collection/2452030/#{i}"
  )
  i += 1
end

puts "Done! #{Restaurant.count} restaurants created."

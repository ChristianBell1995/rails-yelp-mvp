# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Nandos',
    address: 'Chicken Road',
    phone_number: "07768996754",
    category: 'japanese'
  },
  {
    name: 'Pizza Express',
    address: 'West Road',
    phone_number: "07768986754",
    category: 'french'
  },
  {
    name: 'Jamie\'s Italian',
    address: 'Jamie Road',
    phone_number: "07768296754",
    category: 'french'
  },
  {
    name: 'A Pub',
    address: 'Pub Road',
    phone_number: "077681996754",
    category: 'french'
  },
  {
    name: 'Another Restaurant',
    address: 'food Road',
    phone_number: "077689963754",
    category: 'japanese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

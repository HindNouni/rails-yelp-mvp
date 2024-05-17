# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french" },
  { name: "Chez Gladines", address: "75013 Paris", phone_number: "0123456798", category: "french" },
  { name: "Pizza East", address: "75010 Paris", phone_number: "0123456787", category: "italian" },
  { name: "Nobu", address: "75001 Paris", phone_number: "0123456786", category: "japanese" },
  { name: "Wok to Walk", address: "75004 Paris", phone_number: "0123456785", category: "chinese" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clean database"
Restaurant.destroy_all

puts "Creating seeds"

miles = {name: "Miles", address: "33, rue du Cancera 33000 Bordeaux", phone_number: "0556811824", category: "french"}
chez_ba = {name: "Chez Ba", address: "15, rue Leyteire 33000 Bordeaux", phone_number: "0556784839", category: "french"}
massa = {name: "Massa", address: "36, rue des Ayres 33000 Bordeaux", phone_number: "0556987654", category: "italian"}
la_frite = {name: "La Frite", address: "4, rue de la frite 33000 Bordeaux", phone_number: "0556236578", category: "belgian"}
bao = {name: "Bao", address: "56, rue de la brioche 33000 Bordeaux", phone_number: "0556090909", category: "chinese"}

[miles, chez_ba, massa, la_frite, bao].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Seeds created!"

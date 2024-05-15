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

# puts "Creating restaurants..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"

restaurant_attributes = [
  { name: 'Restaurant 1', address: 'Address 1', category:'chinese', phone_number: '123-456-7890' },
  { name: 'Restaurant 2', address: 'Address 2', category:'italian',phone_number: '456-789-0123' },
  { name: 'Restaurant 3', address: 'Address 3', category:'japanese', phone_number: '789-012-3456' },
  { name: 'Restaurant 4', address: 'Address 4', category:'french', phone_number: '012-345-6789' },
  { name: 'Restaurant 5', address: 'Address 5', category:'belgian',phone_number: '345-678-9012' }
]

# Iterate over the restaurant attributes array and create restaurants
restaurant_attributes.each do |attributes|
  Restaurant.create!(attributes)
end

puts "Seeding complete!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
bossette = {name: "La Bossette", address: "route de Berne 23, 1008 Lausanne", category: "french"}
dieci = {name: "Dieci", address: "ch des bossons 31, 1018 Lausanne", category: "belgian"}
hong = {name: "Hong", address: "route des fleurettes 21, 1007 Lausanne", category: "chinese"}

[dishoom, pizza_east, bossette, dieci, hong].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

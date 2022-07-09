# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
user = User.create!(username: "Cristian", password: "coder123")

puts "****Seeding Oils****"
oil1 = Oil.create([{ name: "Lavender", price: 25, user_id: user.id }])
oil2 = Oil.create([{ name: "Peppermint", price: 30, user_id: user.id }])
oil3 = Oil.create([{ name: "OnGaurd", price: 35, user_id: user.id }])

puts "Done..."

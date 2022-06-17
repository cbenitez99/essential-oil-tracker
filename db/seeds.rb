# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "****Seeding Oils****"
Oil.create([{ name: "Lavender", price: 25 }])
Oil.create([{ name: "Peppermint", price: 30 }])
Oil.create([{ name: "OnGaurd", price: 35 }])

puts "Done.."

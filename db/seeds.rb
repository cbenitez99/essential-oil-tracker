# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
user = User.create!(username: "Cristian", password: "coder123")

puts "****Seeding Oils****"
oil1 = Oil.create([{ name: "Lavender", price: 25, amount: 2, user_id: user.id }])
oil2 = Oil.create([{ name: "Peppermint", price: 30, amount: 4, user_id: user.id }])
oil3 = Oil.create([{ name: "OnGaurd", price: 35, amount: 3, user_id: user.id }])

AllProduct.new([
    { name: "Lemon", price: 20, amount: 10 },
    { name: "Cinnamon", price: 35, amount: 2 },
    { name: "Orange Citrus", price: 25, amount: 8 },
    { name: "Basil", price: 25, amount: 7 },
    { name: "Cardamom", price: 25, amount: 2 },
    { name: "Cypress", price: 15, amount: 2 },
    { name: "Frankincense", price: 40, amount: 3 },
    { name: "Helichrysum", price: 30, amount: 5 },
    { name: "Lavender", price: 25, amount: 6 },
    { name: "Eucalyptus", price: 15, amount: 5 },
    { name: "Cedarwood", price: 15, amount: 9 }
]);

puts "Done..."

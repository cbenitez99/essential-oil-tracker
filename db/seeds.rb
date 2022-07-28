# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
user = User.create!(username: "Cristian", password: "coder123")

puts "****Seeding Oils****"
oil1 = UserOil.create([{ name: "Lavender", price: 25, amount: 2, user_id: user.id }])
oil2 = UserOil.create([{ name: "Peppermint", price: 30, amount: 2, user_id: user.id }])
oil3 = UserOil.create([{ name: "OnGaurd", price: 35, amount: 2, user_id: user.id }])

Product.create!([
    { name: "Lemon", price: 20, image: "" },
    { name: "Cinnamon", price: 35, image: "" },
    { name: "Orange Citrus", price: 25, image: "" },
    { name: "Basil", price: 25, image: "" },
    { name: "Cardamom", price: 25, image: "" },
    { name: "Cypress", price: 15, image: "" },
    { name: "Frankincense", price: 40, image: "" },
    { name: "Helichrysum", price: 30, image: ""},
    { name: "Lavender", price: 25, image: ""},
    { name: "Eucalyptus", price: 15, image: "" },
    { name: "Cedarwood", price: 15, image: ""}
]);

puts "Done..."

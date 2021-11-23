puts "Starting"
User.create!(user_name: "Jacqouilles", address: "Lausanne", email: "jaques.chirac@gmail.com", password: "123456")
User.create!(user_name: "Henry", address: "Le Havre", email: "henry.ford@gmail.com", password: "123456")
User.create!(user_name: "Boris", address: "Boulogne", email: "carls.chic@gmail.com", password: "123456")

Vehicle.create!(title: "Boosted Board", description: "400W plein axe", price: 152, user_id: 2)
Vehicle.create!(title: "Speedy Bike", description: "La classe holandaise", price: 1532, user_id: 1)
Vehicle.create!(title: "Troteenette", description: "Pur plaisir", price: 15, user_id: 1)
puts "Ended"

puts "Delete user"
User.destroy_all

puts "Delete vehicules"
Vehicle.destroy_all



puts "Create user"
user1 = User.create!(user_name: "Jacqouilles", address: "Lausanne", email: "jaques.chirac@gmail.com", password: "123456")
user2 = User.create!(user_name: "Henry", address: "Le Havre", email: "henry.ford@gmail.com", password: "123456")
user3 = User.create!(user_name: "Boris", address: "Boulogne", email: "carls.chic@gmail.com", password: "123456")
puts "Finished creating users"

file1 = URI.open('https://res.cloudinary.com/dvzoubga6/image/upload/v1637326552/xknaz4xfi4kbtlrwjfry.jpg')
file2 = URI.open('https://res.cloudinary.com/dvzoubga6/image/upload/v1637326552/xknaz4xfi4kbtlrwjfry.jpg')
file3 = URI.open('https://res.cloudinary.com/dvzoubga6/image/upload/v1637326552/xknaz4xfi4kbtlrwjfry.jpg')

puts "Load pictures"
veh1 = Vehicle.new(title: "Boosted Board", description: "400W plein axe", price: 152, user: user1)
veh2 = Vehicle.new(title: "Speedy Bike", description: "La classe holandaise", price: 1532, user: user2)
veh3 = Vehicle.new(title: "Troteenette", description: "Pur plaisir", price: 15, user: user3)
puts "Pictures loaded"

puts "Attach photos to vehicles"
veh1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
veh1.save
veh2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
veh2.save
veh3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
veh3.save
puts "Ended"

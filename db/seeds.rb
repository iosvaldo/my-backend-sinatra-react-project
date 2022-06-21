puts "🌱 Seeding users..."
User.create(name: "Norah")
User.create(name: "Laura")
User.create(name: "Os")
User.create(name: "Harry")
User.create(name: "Matthew")
User.create(name: "John")

puts "seeding appointments"
Appointment.create(username: "Norah", appointment_type: "Haircut", salon_id: 1, user_id: 1)
Appointment.create(username: "Laura", appointment_type: "Pedicure", salon_id: 1, user_id: 2)
Appointment.create(username: "Os", appointment_type: "Massage", salon_id: 1, user_id: 3)
Appointment.create(username: "Harry", appointment_type: "Manicure", salon_id: 1, user_id: 4)
Appointment.create(username: "Matthew", appointment_type: "Massage", salon_id: 1, user_id: 5)
Appointment.create(username: "John", appointment_type: "Pedicure", salon_id: 1, user_id: 6)


puts "seeding salons"
Salon.create(name: "Placement name", address: "76 Star Street, New York, NY", phone_number: 6463849301, id: 1)

puts "✅ Done seeding!"

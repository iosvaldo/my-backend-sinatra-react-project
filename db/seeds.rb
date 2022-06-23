puts "🌱 Seeding services..."
s1 = Service.create(appointment_type: "Haircut")
s2 = Service.create(appointment_type: "Manicute")
s3 = Service.create(appointment_type: "Pedicure")
s4 = Service.create(appointment_type: "Men's Haircut")
s5 = Service.create(appointment_type: "Color Treatment")

puts "seeding salons"
salon1 = Salon.create(name: "Placement name", address: "76 Star Street, New York, NY", phone_number: 6463849301)

puts "seeding appointments"
Appointment.create(username: "Leigh", date: "June 24th", salon_id: salon1.id, service_id: s5.id)
Appointment.create(username: "Em", date: "November 7th", salon_id: salon1.id, service_id: s1.id)
Appointment.create(username: "Sinclair", date: "July 1st" , salon_id: salon1.id, service_id: s4.id)
Appointment.create(username: "Harry", date: "July 15th", salon_id: salon1.id, service_id: s4.id)
Appointment.create(username: "James", date: "September 1st", salon_id: salon1.id, service_id: s2.id)
Appointment.create(username: "Peachy", date: "July 3rd", salon_id: salon1.id, service_id: s5.id)

puts "✅ Done seeding!"

Hospital.delete_all

10.times do
  Hospital.create(
    name:     Faker::Company.name,
    address:  Faker::Address.street_address,
    city:     Faker::Address.city,
    state:    Faker::Address.state_abbr,
    phone:    Faker::PhoneNumber.phone_number
  )
  puts "#{Hospital.count} hospitals"
end

Hospital.create(name:"Jackson Memorial Hospital", address: "1611 NW 12th Street", city: "Miami", state: "FL", phone: 3055851111)

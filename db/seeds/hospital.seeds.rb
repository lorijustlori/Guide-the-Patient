

10.times do
  Hospital.create(
    name:Faker::Company.name, address:Faker::Address.street_address ,city:Faker::Address.city,state:Faker::Address.state_abbr,phone_number:Faker::PhoneNumber.phone_number

  )
end


puts "all done"

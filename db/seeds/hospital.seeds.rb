

10.times do
  Hospital.create(
    name:Faker::Company.name, city:Faker::Address.city,state:Faker::Address.state_abbr,phone_number:Faker::PhoneNumber.phone_number

  )
end


puts "all done"

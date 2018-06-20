Patient.delete_all

100.times do
  Patient.create(
    medical_record_number:  Faker::IDNumber.valid,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    address:                Faker::Address.street_address,
    city:                   Faker::Address.city,
    state:                  Faker::Address.state_abbr,
    phone:                  Faker::PhoneNumber.phone_number,
    email:                  Faker::Internet.email
  )
  puts "#{Patient.count} patients"
end

Patient.create(medical_record_number:"121-22-3214", first_name:"Greg", last_name: "DesVallons", address:"142 Shoulder Street", city:"Sunrise", state:"FL" phone:"(954) 954-4504", email:"gregsthebest@greg.com")

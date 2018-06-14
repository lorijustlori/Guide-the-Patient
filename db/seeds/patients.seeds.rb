100.times do
Patient.create(
  medical_record_number:Faker::IDNumber.valid, first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, address:Faker::Address.street_address, city:Faker::Address.city, state:Faker::Address.state_abbr, phone:Faker:: PhoneNumber.phone_number, email:Faker::Internet.email 
)
end

puts "All done"


100.times do
  Physician.create(
   first_name:Faker::Name.first_name, last_name:Faker::Name.last_name

  )
end


puts "all done"

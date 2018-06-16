Physician.delete_all

after :hospital do

  100.times do
    Physician.create(
      first_name: Faker::Name.first_name,
      last_name:  Faker::Name.last_name,
      hospital:   Hospital.all.sample
    )
    puts "#{Physician.count} physicians"
  end

end

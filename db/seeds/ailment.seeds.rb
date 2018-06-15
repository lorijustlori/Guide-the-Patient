require 'csv'

CSV.foreach(
	Rails.root.join('support', 'Ailment.csv'),
  headers: true
) do |row|
  Ailment.find_or_create_by(row.to_h)
  puts "There are now #{Ailment.count} rows in the ailments table"
end

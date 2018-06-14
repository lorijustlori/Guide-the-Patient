require 'csv'

CSV.foreach(
	Rails.root.join('support', 'Remedy.csv'), 
  headers: true
) do |row|
  puts row.to_h
  Remedy.find_or_create_by(row.to_h)
  puts "There are now #{Remedy.count} rows in the remedies table"
end
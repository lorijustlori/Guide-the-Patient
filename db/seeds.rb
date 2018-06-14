# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Action.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before", remedy_id: 23)
Action.create(activity:"call pet sitter", number:1, unit:"week", timeline:"before", remedy_id: 23)

# Find the Remedy for these actions
# r = Remedy.find_by(code: "<CODE HERE>")
# r.actions.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before")
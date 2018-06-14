after :remedy do

Action.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before", remedy_id: 23)
Action.create(activity:"call pet sitter", number:1, unit:"week", timeline:"before", remedy_id: 23)

// Find the Remedy for these actions
// r = Remedy.find_by(code: "<CODE HERE>")
// r.actions.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before")

end
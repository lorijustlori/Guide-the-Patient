after :remedy do

Action.create(activity:"Pay bills", number: 3, unit: "days", timeline: "before", remedy_id: 23)
Action.create(activity:"Schedule baby sitter", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Schedule pet sitter", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Meal prep", number:3, unit:"days", timeline:"before", remedy_id: 23)
Action.create(activity:"Fill prescriptions", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Complete blood work", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Complete chest X-ray", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Complete EKG", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Schedule follow-up appointment with doctor", number:1, unit:"week", timeline:"after", remedy_id: 23)
Action.create(activity:"Schedule 1st physical therapy", number:1, unit:"month", timeline:"after", remedy_id: 23)
Action.create(activity:"Do not lift heavy objects for", number:6, unit:"weeks or until instructed by Doctor", timeline:"after", remedy_id: 23)
Action.create(activity:"Remove dressing", number:48, unit:"hours", timeline:"after", remedy_id: 23)
Action.create(activity:"No soaking in tub/swimming", number:2, unit:"weeks", timeline:"after", remedy_id: 23)
Action.create(activity:"It may be helpful to sleep in a recliner", number:1, unit:"week", timeline:"after", remedy_id: 23)
Action.create(activity:"Remove sling only to shower and to straighten elbow/wrist", number:1, unit:"month", timeline:"after", remedy_id: 23)
Action.create(activity:"Pay bills", number: 3, unit: "days", timeline: "before", remedy_id: 287)
Action.create(activity:"Schedule baby sitter", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Schedule pet sitter", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Meal prep", number:3, unit:"days", timeline:"before", remedy_id: 287)
Action.create(activity:"Fill prescriptions", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Complete blood work", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Complete X-ray", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Schedule follow-up appointment with doctor", number:1, unit:"week", timeline:"after", remedy_id: 287)
Action.create(activity:"Schedule physical therapy", number:1, unit:"month", timeline:"after", remedy_id: 287)
Action.create(activity:"Can shower", number:3, unit:"days", timeline:"after", remedy_id: 287)
Action.create(activity:"When showering keep knee covered in plastic", number:1, unit:"week", timeline:"after", remedy_id: 287)
Action.create(activity:"No weight on leg", number:6, unit:"weeks or until instructed by Doctor", timeline:"after", remedy_id: 287)
Action.create(activity:"Change dressings", number:1, unit:"time daily", timeline:"after", remedy_id: 287)
Action.create(activity:"Ice knee", number:3, unit:"times daily or as frequently as possible", timeline:"after", remedy_id: 287)


  # Find the Remedy for these actions
  # r = Remedy.find_by(code: "<CODE HERE>")
  # r.actions.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before")

end

after :remedy do

Action.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before", remedy_id: 23)
Action.create(activity:"Call Pet Sitter", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Do Grocery Shopping", number:3, unit:"days", timeline:"before", remedy_id: 23)
Action.create(activity:"Get Medical Refills", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Get Blood Work Done", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Get X-Ray Done", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Get EKG Done", number:1, unit:"week", timeline:"before", remedy_id: 23)
Action.create(activity:"Schedule Follow Up Appointment With Doctor", number:1, unit:"week", timeline:"after", remedy_id: 23)
Action.create(activity:"Schedule Physical Therapy", number:1, unit:"month", timeline:"after", remedy_id: 23)
Action.create(activity:"No Lifting Heavy Objects", number:6, unit:"weeks or until instructed by Doctor", timeline:"after", remedy_id: 23)
Action.create(activity:"Remove Dressing", number:48, unit:"hours", timeline:"after", remedy_id: 23)
Action.create(activity:"No Soaking In Tub Or Swimming", number:2, unit:"weeks", timeline:"after", remedy_id: 23)
Action.create(activity:"It May Be Helpful To Sleep In A Recliner", number:1, unit:"week", timeline:"after", remedy_id: 23)
Action.create(activity:"Remove Sling Only To Shower And To Straighten Elbow And Wrist", number:1, unit:"month", timeline:"after", remedy_id: 23)
Action.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before", remedy_id: 287)
Action.create(activity:"Call Pet Sitter", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Do Grocery Shopping", number:3, unit:"days", timeline:"before", remedy_id: 287)
Action.create(activity:"Get Medical Refills", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Get Blood Work Done", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Get X-Ray Done", number:1, unit:"week", timeline:"before", remedy_id: 287)
Action.create(activity:"Schedule Follow Up Appointment With Doctor", number:1, unit:"week", timeline:"after", remedy_id: 287)
Action.create(activity:"Schedule Physical Therapy", number:1, unit:"month", timeline:"after", remedy_id: 287)
Action.create(activity:"Can Shower", number:3, unit:"days", timeline:"after", remedy_id: 287)
Action.create(activity:"When Showering Keep Knee Covered In Plastic", number:1, unit:"week", timeline:"after", remedy_id: 287)
Action.create(activity:"No Weight On Leg", number:6, unit:"weeks or until instructed by Doctor", timeline:"after", remedy_id: 287)
Action.create(activity:"Change Dressing", number:1, unit:"time daily", timeline:"after", remedy_id: 287)
Action.create(activity:"Ice Knee", number:3, unit:"times daily or as frequently as possible", timeline:"after", remedy_id: 287)


  # Find the Remedy for these actions
  # r = Remedy.find_by(code: "<CODE HERE>")
  # r.actions.create(activity: "Pay Bills", number: 3, unit: "days", timeline: "before")

end

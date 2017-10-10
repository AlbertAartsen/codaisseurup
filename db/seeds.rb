User.destroy_all

bob = User.create!(email:"bob@obo.com", password: "123456ab")

event = Event.create!(name: "Bobarty", description: "Much Funs With Balloons", location: "@Bobs Place", price: 1,
capacity: 23, includes_food: "If you eat Balloons, sure, do that thing!", includes_drinks: "BYO",
starts_at: DateTime.now+1, ends_at: DateTime.now+2, active: true, user: bob)

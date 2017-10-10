Theme.destroy_all
User.destroy_all

modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

bob = User.create!(email:"bob@obo.com", password: "123456ab")

event = Event.create!(name: "Bobarty", description: "Much Funs With Balloons", location: "@Bobs Place", price: 1,
capacity: 23, includes_food: true, includes_drinks: true,
starts_at: DateTime.now+1, ends_at: DateTime.now+2, active: true, user: bob, themes: [tempting_terrace, warm_and_cozy])

obo = User.create!(email:"obo@bob.com", password: "1234567")

event = Event.create!(name: "Humus", description: "Much Funs With Humus", location: "Humus Farm", price: 4,
capacity:5, includes_food: true, includes_drinks: true,
starts_at: DateTime.now+1, ends_at: DateTime.now+2, active: true, user: obo, themes: [elegant_and_ornate, warm_and_cozy])

tim = User.create!(email:"tim@mit.com", password: "12345678")

event = Event.create!(name: "Timmy!", description: "Much Funs With Tim", location: "Cemetary ", price: 1,
capacity: 3, includes_food: true, includes_drinks: true,
starts_at: DateTime.now+1, ends_at: DateTime.now+2, active: true, user: tim, themes: [elegant_and_ornate, a_mans_touch])

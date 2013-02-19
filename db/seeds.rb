# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
customer = Customer.create([{ contact: 'Kenneth Eakin Contact', name: 'Kenneth Eakin', phone: 9038438253 },
                           { contact: 'Mary Hinton Contact', name: 'Mary Hinton', phone: 2179578168 },
                           { contact: 'Pamela Marini Contact', name: 'Pamela Marini Eakin', phone: 8086278798 }])

order = Order.create([{ cost: 595, quantity: 100, name: "100 50 packs of DVDs", customer_id: 1, item_id: 1 },
                      { cost: 9.75, quantity: 3, name: "7/8\" bolts", customer_id: 2, item_id: 3 },
                      { cost: 0.99, quantity: 1, name: "4 piece Burger King chicken nuggets", customer_id: 3, item_id: 2 },
                      { cost: 495, quantity: 80, name: "80 50 packs of DVDs", customer_id: 2, item_id: 1 },
                      { cost: 8.75, quantity: 5, name: "1/2\" bolts", customer_id: 3, item_id: 3 },
                      { cost: 0.89, quantity: 1, name: "4 piece Hardee's chicken nuggets", customer_id: 1, item_id: 2 },
                      { cost: 395, quantity: 60, name: "60 50 packs of DVDs", customer_id: 3, item_id: 1 },
                      { cost: 7.75, quantity: 7, name: "1/4\" bolts", customer_id: 1, item_id: 3 },
                      { cost: 0.79, quantity: 1, name: "4 piece McDonald's chicken nuggets", customer_id: 2, item_id: 2 }])

item = Item.create([{ name: "DVDs" },
                      {name: "Chicken nuggets" },
                      {name: "Bolts" }])
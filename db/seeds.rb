# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Simple seed for now - yes should use accepts_nested_attributes_for :addresses
Person.create([
    {first_name: "Laura", last_name: "Erskine", phone:"425-888-9999"},
    {first_name: "Mark",  last_name: "Erskine", phone:"206-444-8888"}
])

Address.create([
  {person_id: 1, street_address: "10203 NE 22nd Place", city: "Bellevue", state: "WA", zip: "98004"},
  {person_id: 2, street_address: "111 Elm Street"     , city: "Seattle",  state: "WA", zip: "98004"}
])


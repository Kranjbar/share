# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  user = User.create([
    { email: 'a@a.com', first_name: 'a', last_name: 'a', current_city: 'a', password_digest: 'a'},
    { email: 'b@b.com', first_name: 'b', last_name: 'b', current_city: 'b', password_digest: 'b'},
    { email: 'c@c.com', first_name: 'c', last_name: 'c', current_city: 'c', password_digest: 'c'},
    { email: 'nwimmer123@yahoo.com', first_name: 'Noah', last_name: 'Wimmer', current_city: 'Berkeley', password_digest: '123'}
    ])

  categories = ([{name: 'Tutoring'}, {name: 'Outdoors'}, {name: 'Health and Beauty'}])
  

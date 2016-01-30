# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include ActionView::Helpers

User.destroy_all
Skill.destroy_all
Category.destroy_all

  user = User.create([
    { email: 'a@a.com', first_name: 'a', last_name: 'a', current_city: 'a', password_digest: 'a'},
    { email: 'b@b.com', first_name: 'b', last_name: 'b', current_city: 'b', password_digest: 'b'},
    { email: 'c@c.com', first_name: 'c', last_name: 'c', current_city: 'c', password_digest: 'c'},
    { email: 'nwimmer123@yahoo.com', first_name: 'Noah', last_name: 'Wimmer', current_city: 'Berkeley', password_digest: '123'}
  ])

  category = Category.create([{name: 'Tutoring'}, {name: 'Outdoors'}, {name: 'Health and Beauty'}])

  skill = Skill.create([
    {category_id: Category.find_by_name('Tutoring').id, name: 'Math'}, 
    {category_id: Category.find_by_name('Tutoring').id, name: 'English'}, 
    {category_id: Category.find_by_name('Tutoring').id, name: 'Science'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Yard'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Painting'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Dog Walking'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'Hair Cutting'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'ManiPedi'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'Makeup'},
  ])


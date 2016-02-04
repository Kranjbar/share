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

  
  k = User.new ({email: 'kehontas@gmail.com', first_name: 'Kehontas', last_name: 'Rowe', current_city: 'Oakland', password: 'password', bio: 'Lorem ipsum dolor sit amet fusce. Luctus in a. Natoque a cras leo mauris fusce. Praesent doloribus vel. Leo suspendisse sed porttitor urna taciti sociis.' })  
  k.avatar = File.open("public/images/Kehontas.png")
  k.save!

  a = User.new ({email: 'alexrao17@gmail.com', first_name: 'Alex', last_name: 'Rao', current_city: 'Palo Alto', password: 'password', bio: 'Lorem ipsum dolor sit amet fusce. Luctus in a. Natoque a cras leo mauris fusce. Praesent doloribus vel. Leo suspendisse sed porttitor urna taciti sociis.' })

  a.avatar = File.open("public/images/Alex.png")
  a.save!

  n = User.new ({email: 'nwimmer123@yahoo.com', first_name: 'Noah', last_name: 'Wimmer', current_city: 'Berkeley', password: '123', bio: 'Lorem ipsum dolor sit amet fusce. Luctus in a. Natoque a cras leo mauris fusce. Praesent doloribus vel. Leo suspendisse sed porttitor urna taciti sociis.'})
  n.avatar = File.open("public/images/Noah.png")
  n.save!

  k = User.new ({email: 'kayvon.ranjbar@gmail.com', first_name: 'Kayvon', last_name: 'Ranjbar', current_city: 'Oakland', password: 'password', bio: 'Lorem ipsum dolor sit amet fusce. Luctus in a. Natoque a cras leo mauris fusce. Praesent doloribus vel. Leo suspendisse sed porttitor urna taciti sociis.'})

  k.avatar = File.open("public/images/Kayvon.JPG")
  k.save!

  h = User.new ({email: 'h.n.stenson@gmail.com', first_name: 'Heather', last_name: 'Stenson', current_city: 'Oakland', password: 'password', bio: 'Lorem ipsum dolor sit amet fusce. Luctus in a. Natoque a cras leo mauris fusce. Praesent doloribus vel. Leo suspendisse sed porttitor urna taciti sociis.'})
  h.avatar = File.open("public/images/heather_w_chicken.JPG")
  h.save!

  category = Category.create([{name: 'Tutoring'}, {name: 'Outdoors'}, {name: 'Health and Beauty'}, {name: 'Pets'}, 
    {name: 'In-Home Care'},{name: 'Lessons'}, {name: 'Fitness'},{name: 'Freelance Skills'}, {name: 'Home Improvement'}])

  skill = Skill.create([
    {category_id: Category.find_by_name('Tutoring').id, name: 'Math'}, 
    {category_id: Category.find_by_name('Tutoring').id, name: 'English'}, 
    {category_id: Category.find_by_name('Tutoring').id, name: 'Science'},
    {category_id: Category.find_by_name('Tutoring').id, name: 'Reading'},
    {category_id: Category.find_by_name('Tutoring').id, name: 'Computer Usage'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Yard'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Painting'},
    {category_id: Category.find_by_name('Outdoors').id, name: 'Dog Walking'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'Hair Cutting'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'ManiPedi'},
    {category_id: Category.find_by_name('Health and Beauty').id, name: 'Makeup'},
    {category_id: Category.find_by_name('Pets').id, name: 'Dog walking'}, 
    {category_id: Category.find_by_name('Pets').id, name: 'Cat Feeding'}, 
    {category_id: Category.find_by_name('In-Home Care').id, name: 'Baby Sitting'},
    {category_id: Category.find_by_name('In-Home Care').id, name: 'Senior Care'},
    {category_id: Category.find_by_name('In-Home Care').id, name: 'House Sitting'},
    {category_id: Category.find_by_name('Lessons').id, name: 'Tent Building'},
    {category_id: Category.find_by_name('Lessons').id, name: 'Bicycle Repair'},
    {category_id: Category.find_by_name('Lessons').id, name: 'Bible Study'},
    {category_id: Category.find_by_name('Lessons').id, name: 'Swimming'},
    {category_id: Category.find_by_name('Fitness').id, name: 'Personal Training'}, 
    {category_id: Category.find_by_name('Fitness').id, name: 'Cycling'}, 
    {category_id: Category.find_by_name('Fitness').id, name: 'Running'},
    {category_id: Category.find_by_name('Fitness').id, name: 'Jogging'},
    {category_id: Category.find_by_name('Fitness').id, name: 'Walking'},
    {category_id: Category.find_by_name('Fitness').id, name: 'Yoga'},
    {category_id: Category.find_by_name('Freelance Skills').id, name: 'Web Development'},
    {category_id: Category.find_by_name('Freelance Skills').id, name: 'Legal Services'},
    {category_id: Category.find_by_name('Home Improvement').id, name: 'Drywall'},
    {category_id: Category.find_by_name('Home Improvement').id, name: 'Demolition'},
    {category_id: Category.find_by_name('Home Improvement').id, name: 'Clean Gutters'}, 
    {category_id: Category.find_by_name('Home Improvement').id, name: 'Painting'}
  ])


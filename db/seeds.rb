# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rooms = Room.create([{name:'Big Room', desc: 'This room is huge', bed: 'Double double'}, {name:'Small Room', desc: 'This room is small', bed: 'Floor'},{name:'Medium Room', desc: 'This room is a room', bed: 'Single'}])

users = User.create([{username:'Aaron', crypted_pass: 'foo', email:'stocktonae@gmail.com'}])

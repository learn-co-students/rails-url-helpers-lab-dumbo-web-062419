# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Student.create(first_name: "Olga", last_name: "Rosas", active: true)
s2 = Student.create(first_name: "Olivia", last_name: "Moreta", active: true)
s3 = Student.create(first_name: "Joaquin", last_name: "Moreta", active: false)
s4 = Student.create(first_name: "Fernando", last_name: "Moreta", active: false)
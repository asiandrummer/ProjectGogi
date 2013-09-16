# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{ name: 'Hyo Jeong', email: 'hyo.jeong@sv.cmu.edu', password: 'hyohyeon1', password_confirmation: 'hyohyeon1' }])
Member.create([{ name: 'John Doe', user_id: 1 }])

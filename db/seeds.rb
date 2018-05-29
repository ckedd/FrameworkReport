# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "maikimo", email: "mike@mike.com", password: "mikemike", admin: true)
Package.create(name: "Rails", developed_by: "David Heinemeier Hansson", live: true, last_updated: "April 09, 2018")
Profile.create(user_id: 1, first_name: "Mike", last_name: "Momo", age: 32)
Review.create(user_id: 1, package_id: 1, rating: 4, general_content: "Pretty good", pros_content: "Usesr friendly", cons_content: "Bloated af")
Comment.create(user_id: 1, review_id: 1, content: "This review is pretty bad.  You're not telling us anything at all.")

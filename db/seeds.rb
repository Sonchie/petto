# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating pets...'
Pet.create!({
name: "clark",
category: "Dog"
})
Pet.create!({
name: "Cham",
category: "Cat"
})
Pet.create!({
name: "John",
category: "Horse"
})
Pet.create!({
name: "Pin",
category: "Bird"
})
Pet.create!({
name: "Kevin",
category: "Pig"
})


puts 'Finished!'

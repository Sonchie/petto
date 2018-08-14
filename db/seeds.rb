# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# pet categories



def create_pet
pet_name1 = pet_name
pet_category = categories
pet_gender = gender
Pet.new(name: pet_name1, category: pet_category, gender: pet_gender)
end

def create_user
email1 = email
User.create(email: email1, password: "password")
end

def categories
	["Pig","Dog","Cat","Horse","Hampster","Rat","Duck","Camel","Deer","Penguin"].sample
end	

def first_name
	Faker::Name.first_name
end

def last_name
	Faker::Name.last_name
end

def email
	Faker::Internet.email
end

def pet_name
	Faker::FunnyName.name
end

def gender
	["Male", "Female"].sample
end

10.times do
	puts "Making a user with 3 pets"
	user = create_user
	pet1 = create_pet
	pet2 = create_pet
	pet3 = create_pet
	pet1.user = user
	pet2.user = user
	pet3.user = user
	pet1.save!
	pet2.save!
	pet3.save!
end

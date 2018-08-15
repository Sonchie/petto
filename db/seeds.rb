# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# pet categories

Pet.destroy_all
User.destroy_all

def create_user
email1 = email
User.create(email: email1, password: "password")
end

def pet_name
	Faker::FunnyName.name
end

def gender
	["Male", "Female"].sample
end


def email
	Faker::Internet.email
end


def categories
	["Pig","Dog","Cat","Horse","Hampster","Rat","Duck","Camel","Deer","Penguin"].sample
end	

puts "making a user"

user = create_user

pet_name1 = pet_name
pet_category = "Penguin"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302443/Penguin.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Penguin"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302422/1200px-South_Shetland-2016-Deception_Island_E2_80_93Chinstrap_penguin__28Pygoscelis_antarctica_29_04.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Camel"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302360/7057-004-0FFC795F.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Camel"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302341/07._Camel_Profile_2C_near_Silverton_2C_NSW_2C_07.07.2007.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Rat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302320/Ratcage-GettyImages-563299997-59138b373df78c9283a1dd18.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Rat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302303/144007974_677f75d6bc_b.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Rat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302286/rat-in-hands-thinkstockphotos-469649085.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Hampster"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302257/StrongHampster_400x400.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Hampster"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302243/hqdefault.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Horse"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302228/7247492-3x4-700x933.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Horse"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302215/button2-270x250.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Horse"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302204/11364263_web1_180413-KIR-HorseM.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Pig"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302168/gettyimages-90539573.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Pig"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302158/Pig-performance-may-see-boost-but-mode-of-action-remains-aloof-in-copper-feeding-trial_wrbm_large.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Cat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302128/adorable-animal-blur-326875.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Cat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302121/caturday-shutterstock_149320799.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Cat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302115/pexels-photo-617278.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Cat"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302109/image.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Dog"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302066/dog-over-fence.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Dog"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302064/housetrain_adult_dog_hero.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Dog"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302062/funny-dog-thoughts-tweets-1.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

pet_name1 = pet_name
pet_category = "Dog"
pet_gender = gender
photo_url = "https://res.cloudinary.com/ds3trj5ew/image/upload/v1534302062/hsdogdog-profile_image-5550ade194780dfc-300x300.jpg"
pet1 = Pet.new(name: pet_name1, category: pet_category, gender: pet_gender, remote_photo_url: photo_url)
pet1.user = user
pet1.save!

puts "making a pet with an image"

puts "done seeding db"
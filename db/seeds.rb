# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fitness = Pillar.create(name:"Fitness")
nutrition = Pillar.create(name:"Nutrition")
rest = Pillar.create(name:"Rest")
mentality =  Pillar.create(name:"Mentality")


yoga = Topic.create(name:"yoga")
veggies = Topic.create(name:"veggies")
meditation = Topic.create(name:"meditation")
dance = Topic.create(name:"dance")


10.times do
 partner = Affiliate.create(address: Faker::Address.full_address, name:Faker::Company.name)
#  event = Event.create!(name: Faker::Coffee.blend_name, address: Faker::Address.full_address, partnership:partner)
 task = Task.create!(title:Faker::Verb.ing_form,content:Faker::Quote.yoda)
 task.topics << Topic.all.sample
#  task.events << event
Post.create!(title:Faker::Book.title, content:Faker::TvShows::BojackHorseman.quote)
end

fitness.topics << yoga
fitness.save!
mentality.topics << yoga
mentality.save!

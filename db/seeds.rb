require 'faker'

#Create Users

  5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: "helloworld",
     role: "standard"
   )
     user.skip_confirmation!
     user.save
 end
 users = User.all

10.times do
  App.create(
    user: users.sample,
    name: Faker::Internet.domain_name,
    desc: Faker::Lorem.sentence
    )
end
apps = App.all

actions = ["home page", "about page", "advert", "download app", "view pdf"]

500.times do 
  event= Event.create(
    app: apps.sample,
    name: Faker::Lorem.word,
    action_1: actions[rand(5)],
    action_2: actions[rand(5)],
    ip_address: Faker::Internet.ip_v4_address,
    created_at: Faker::Date.backward(120),
    created_on: Faker::Date.backward(120).to_date
    )
end
events = Event.all

#Create an admin user
admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role: 'admin'
)
  admin.skip_confirmation!
  admin.save

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{App.count} apps created"
 puts "#{Event.count} events created"
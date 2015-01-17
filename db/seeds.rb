require 'faker'
 
 # Create events

  5.times do
   User.create(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: "helloworld",
   )
 end
 users = User.all

10.times do
  App.create(
    user: users.sample,
    name: Faker::Lorem.word,
    desc: Faker::Lorem.sentence
    )
end
apps = App.all

50.times do 
  Event.create(
    app: apps.sample,
    action: "page view",
    ip_address: Faker::Internet.ip_v4_address,
    created_at: Faker::Date.backward(120)
    )
end
events = Event.all

#Create an admin user
admin = User.create(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld'
)

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{App.count} apps created"
 puts "#{Event.count} events created"
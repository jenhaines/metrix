require 'faker'
 
 # Create events
50.times do 
  Event.create(
    action: "page view",
    ip_address: Faker::Internet.ip_v4_address
    )
end

  events = Event.all
  puts events.class

  10.times do
    App.create(
      events: events.sample,
      name: Faker::Lorem.word,
      desc: Faker::Lorem.sentence
      )
  end

    apps = App.all

 5.times do
   user = User.create(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: "helloworld",
     # password: Faker::Lorem.characters(10)
     app: apps.sample
   )
 end

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